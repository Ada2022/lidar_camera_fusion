#! /usr/bin/env python
# import python pkg
import cv2
import time
import numpy as np

# import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt

from pykalman import KalmanFilter
# from munkres import Munkres
from scipy.optimize import linear_sum_assignment

import csv
import os

# import ros pkg
import rospy
import tf2_ros
import actionlib
import ros_numpy
import message_filters
import image_geometry
from geometry_msgs.msg import Point
from cv_bridge import CvBridge, CvBridgeError
from tf2_sensor_msgs.tf2_sensor_msgs import do_transform_cloud
from sensor_msgs.msg import Image, CameraInfo, PointCloud2
from sensor_msgs.msg import PointField

# import message/action type
# action type with yolo
from sensor_fusion.msg import fusion2yoloAction, fusion2yoloGoal
# message type with yolo
# action type with lidar
from sensor_fusion.msg import fusion2lidarAction, fusion2lidarGoal
# message type with lidar
from sensor_fusion.msg import Obstacle, Obstacles

from pykalman import KalmanFilter





FIRST_TIME = True
TF_BUFFER = None
TF_LISTENER = None
CAMERA_MODEL = image_geometry.PinholeCameraModel()
CV_BRIDGE = CvBridge()
last_time = 0




tracked_piers = []
tracked_person = []
vis_results = [[] for _ in range(8)]



#### kalman filter init
def kalman_filter_init(state_dim, initial_state_mean = None):
    transition_matrix = np.eye(state_dim)
    observation_matrix = np.eye(state_dim)
    initial_state_mean = np.zeros(state_dim) #if not hasattr(initial_state_mean, type) else initial_state_mean
    initial_state_covariance = 0.1 * np.eye(state_dim)
    transition_covariance = 0.1 * np.eye(state_dim)
    observation_covariance = 0.3 * np.eye(state_dim)

    kf = KalmanFilter(transition_matrices=transition_matrix,
                      observation_matrices=observation_matrix,
                      initial_state_mean=initial_state_mean,
                      initial_state_covariance=initial_state_covariance,
                      transition_covariance=transition_covariance,
                      observation_covariance=observation_covariance)
    return kf

pier_ekf = kalman_filter_init(4)
person_ekf = kalman_filter_init(4)

#### criterion for assignment
def calculate_iou(tracked, predict):
    match_nums = max(len(tracked), len(predict))
    iou_matrix = np.zeros((match_nums, match_nums))

    def compute_iou(rec1,rec2):
        left_column_max  = max(rec1[0],rec2[0])
        right_column_min = min(rec1[2],rec2[2])
        up_row_max       = max(rec1[1],rec2[1])
        down_row_min     = min(rec1[3],rec2[3])
        if left_column_max>=right_column_min or down_row_min<=up_row_max:
            return 0
        else:
            S1 = (rec1[2]-rec1[0])*(rec1[3]-rec1[1])
            S2 = (rec2[2]-rec2[0])*(rec2[3]-rec2[1])
            S_cross = (down_row_min-up_row_max)*(right_column_min-left_column_max)
            return S_cross/(S1+S2-S_cross)

    for i in range(len(tracked)):
        pos_t = tracked[0][0] if len(tracked) == 1 else tracked[i][0]
        for j in range(len(predict)):
            pos_p = predict[0] if len(predict) == 1 else predict[j]
            if len(pos_p) == 2: pos_p = pos_p[1]
            iou_matrix[i][j] =  compute_iou(pos_t, pos_p)   

    return iou_matrix

def hugarian_algo(tracked, cur):
    row_idx, col_idx = linear_sum_assignment(-calculate_iou(tracked, cur))
    return row_idx, col_idx

# def km_algo(tracked, cur):
#     km_obj = Munkres()
#     index = km_obj.compute(-calculate_iou(tracked, cur))
#     row_idx = []
#     col_idx = []
#     for r, c in index:
#         row_idx.append(r)
#         col_idx.append(c)
#     return row_idx, col_idx

def update_track(tracked, cur, kf, use_km = False):
    '''
    tracked: List of [x, y, w, h]
    '''
    # if use_km:
    #     row_idx, col_idx = km_algo(tracked, cur)    
    # else:
    #     row_idx, col_idx = hugarian_algo(tracked, cur)
    row_idx, col_idx = hugarian_algo(tracked, cur)

    del_idx = []
    for i in range(len(row_idx)):
        if row_idx[i] > len(tracked) - 1: # tracked_obj less than cur(some apeared from scene)
            tracked.append([cur[col_idx[i]][0],  kf.observation_covariance, cur[col_idx[i]][0], np.zeros(kf.initial_state_mean.shape)]) # pos, cov,t, vel
        elif col_idx[i] > len(cur) - 1: # tracked obj more than cur(some disapeared from scene)
            del_idx.append(row_idx[i])
        else: # update tracking obj
            (last_pos, last_cov, last_time, vel) = tracked[row_idx[i]]
            (ob_time, obs) = cur[col_idx[i]]
            pos, cov = kf.filter_update(last_pos, last_cov, obs, transition_offset = vel * (ob_time - last_time)) # 
            tracked[row_idx[i]][0] = pos
            tracked[row_idx[i]][1] = cov
            tracked[row_idx[i]][2] = ob_time
            tracked[row_idx[i]][3] = (pos - last_pos)/(ob_time - last_time) if ob_time != last_time else np.zeros(kf.initial_state_mean.shape)
    # del_idx.sort(reverse=True)
    # for i in del_idx:
    #     del tracked[i]

    return tracked

def update_func(iter_data, num_of_items):
    for idx, item in enumerate(iter_data):
        if item != 0:
            vis_results[idx].append(item)
    
    marker = ['r.', 'g.', 'c-', 'y-', 'm-']
    for i in range(0, num_of_items - 1, 2):
        if not vis_results[i]: continue
        plt.plot(vis_results[i], vis_results[i+1], marker[i//2])
    plt.draw()
    plt.pause(0.001)

def sensorFusionCallback(image, camera_info, velodyne,  yolo_client,  lidar_client, obstacle_pub):
    # plt.clf() 

    global CAMERA_MODEL, FIRST_TIME, TF_BUFFER, TF_LISTENER, last_time, pier_ekf, person_ekf, tracked_piers, tracked_person, vis_results
    rospy.loginfo('arrive at sensorfusion callback')

    # initialization
    if FIRST_TIME:
        FIRST_TIME = False

        # Setup camera model
        CAMERA_MODEL.fromCameraInfo(camera_info)

        # TF listener
        TF_BUFFER = tf2_ros.Buffer()
        TF_LISTENER = tf2_ros.TransformListener(TF_BUFFER)

    # send img to yolo and receive 2D bbox
    img_synced = fusion2yoloGoal()
    img_synced.id = 0
    img_synced.image = image
    yolo_client.wait_for_server()
    print("successfully wait for server")
    yolo_client.send_goal(img_synced)
    yolo_client.wait_for_result()
    print("successfully wait for result")
    yolo_bboxes = yolo_client.get_result()

    # send point clouds to lidar and receive 3D bbox
    pcl_synced = fusion2lidarGoal()
    pcl_synced.point_cloud = velodyne
    lidar_client.wait_for_server()
    lidar_client.send_goal(pcl_synced)
    lidar_client.wait_for_result()
    lidar_bboxes = lidar_client.get_result()

    # print("Message Received FPS", 1 / (time.time() - last_time))
    last_time = time.time()

    # parse lidar_bboxes to 8 points each
    lidar_bboxes_points = []
    img = CV_BRIDGE.imgmsg_to_cv2(image, 'bgr8')
    lidar_bboxes_M = [] # list of shape (M, 4) --> list of M candidates of [x1, y1, x2, y2] from LIDAR object detection
    raw_lidar_points = []
    x_pts, y_pts = [], []
    for res in lidar_bboxes.lidar_bboxes:
        point1 = [res.position.x + res.dimension.x / 2, res.position.y - res.dimension.y / 2, res.position.z - res.dimension.z / 2]
        point2 = [res.position.x + res.dimension.x / 2, res.position.y - res.dimension.y / 2, res.position.z + res.dimension.z / 2]
        point3 = [res.position.x + res.dimension.x / 2, res.position.y + res.dimension.y / 2, res.position.z - res.dimension.z / 2]
        point4 = [res.position.x + res.dimension.x / 2, res.position.y + res.dimension.y / 2, res.position.z + res.dimension.z / 2]
        point5 = [res.position.x - res.dimension.x / 2, res.position.y - res.dimension.y / 2, res.position.z - res.dimension.z / 2]
        point6 = [res.position.x - res.dimension.x / 2, res.position.y - res.dimension.y / 2, res.position.z + res.dimension.z / 2]
        point7 = [res.position.x - res.dimension.x / 2, res.position.y + res.dimension.y / 2, res.position.z - res.dimension.z / 2]
        point8 = [res.position.x - res.dimension.x / 2, res.position.y + res.dimension.y / 2, res.position.z + res.dimension.z / 2]
        points = [point1, point2, point3, point4, point5, point6, point7, point8]
        

        # print("check point", points)
        
        try:
            transform = TF_BUFFER.lookup_transform('world', 'velodyne', rospy.Time())


            '''test end: by verifying in the picture, the result are almost the same'''

            transform = transform.transform           
            translation = [transform.translation.x, transform.translation.y, transform.translation.z]
            q = [transform.rotation.w, transform.rotation.x, transform.rotation.y, transform.rotation.z]
            trans_mat = np.array([[1 - 2*(q[2]**2 + q[3] ** 2), 2*(q[1]*q[2] - q[0]*q[3]), 2*(q[1]*q[3] + q[0]*q[2])],
                                            [2*(q[1]*q[2] + q[0]*q[3]), 1 - 2*(q[1]**2 + q[3]**2), 2*(q[2]*q[3] + q[0]*q[1])],
                                            [2*(q[1]*q[3] + q[0]*q[2]), 2*(q[2]*q[3] + q[0]*q[1]), 1 - 2*(q[1]**2 + q[2]**2)]])   

            points = np.dot(trans_mat, np.array(points).T) + np.array(translation).reshape(3,1)
            points = points.T
            # print("my 3D points", points)
            
        except tf2_ros.LookupException: 
            pass


        lidar_bboxes_points_2D = [CAMERA_MODEL.project3dToPixel(point) for point in points]

        t = sorted(lidar_bboxes_points_2D[0:4], key = lambda x:(x[1]))
        [x1, y1] = [min(t[0][0], t[1][0]), min(t[0][1], t[1][1])]
        t = sorted(lidar_bboxes_points_2D[4:8], key = lambda x:(x[1]))
        [x2, y2] = [max(t[2][0], t[3][0]), max(t[2][1], t[3][1])]
        if any([x1 < 0, x1 > img.shape[1], y1 < 0 ,y1 > img.shape[0], x2 < 0, x2 > img.shape[1], y2 < 0 ,y2 > img.shape[0]]):
            continue
        else:
            cv2.rectangle(img, (int(round(x1)), int(round(y1))), (int(round(x2)), int(round(y2))), (0,255,0))
        '''end test:It seems that this method can better emcompass the objects(green boxes)'''


        
        lidar_bboxes_M.append([x1, y1, x2, y2])
        raw_lidar_points.append([point4, point5])
        x_pts.append(res.position.x)
        y_pts.append(res.position.y)

        

    ### PARSE YOLO INPUT ---> TODO: ultimately need to create list of size (N, 4) --> list of [x1, y1, x2, y2]
    yolo_bboxes_N = [] # list of shape (N, 4) --> list of N candidates of [x1, y1, x2, y2] from YOLO camera object detection
    yolo_bboxes_N_labels = [] # the corresponding labels for the N candidates

    # print("yolo boxes:", yolo_bboxes.bounding_boxes.bounding_boxes)
    if not yolo_bboxes.bounding_boxes.bounding_boxes:
        return

    for  res in yolo_bboxes.bounding_boxes.bounding_boxes:
        # print(type(res))
        # print(res)
        yolo_bboxes_N_labels.append(res.Class)
        yolo_point=[res.xmin, res.ymin, res.xmax, res.ymax]
        yolo_bboxes_N.append(yolo_point)


    ### bounding box matching algorithm
    def overlap(box1_left, box1_right, box2_left, box2_right):
        overlap_width = (min(box1_right[0], box2_right[0]) - max(box1_left[0], box2_left[0]))
        overlap_height = (min(box1_right[1], box2_right[1]) - max(box1_left[1], box2_left[1]))
        overlap_area = overlap_width * overlap_height
        return overlap_area

    matchings_m_n = []

    for n, cam_box_n in enumerate(yolo_bboxes_N):
        yolo_n_bbox_area = (cam_box_n[2] - cam_box_n[0]) * (cam_box_n[3] - cam_box_n[1])
        max_overlap_area = -1
        best_candidate = -1

        for m, lidar_box_m in enumerate(lidar_bboxes_M):
            overlap_area = overlap(cam_box_n[:2], cam_box_n[2:], lidar_box_m[:2], lidar_box_m[2:])

            if overlap_area > max_overlap_area and overlap_area > 0.25 * yolo_n_bbox_area:
                max_overlap_area = overlap_area
                best_candidate = m

        matchings_m_n.append([n, best_candidate]) # append best pair, closest M-index LIDAR box to the N-index YOLO box
    selected_lidar_idx = [val[1] for val in matchings_m_n]


    x_pts = [-x_pts[idx] for idx in selected_lidar_idx]
    y_pts = [-y_pts[idx] for idx in selected_lidar_idx]


    # print(x_pts, y_pts)
    # plt.ion()
    # plt.clf()
    # plt.xlim([-50, 50])
    # plt.ylim([0, 50])
    # plt.plot(x_pts, y_pts,marker = 'o')
    # plt.pause(0.0000001)
    # plt.ioff()

    # plt.xlim([-50, 50])
    # plt.ylim([0, 50])
    # plt.scatter(x_pts, y_pts)
    # plt.draw()
    # plt.pause(0.0000001)


    for  n, m in matchings_m_n:
        if m == -1:
            continue
        lidar_x1, lidar_y1, lidar_x2, lidar_y2 = [int(round(val)) for val in lidar_bboxes_M[m]]
        object_class = yolo_bboxes_N_labels[n]
        cv2.rectangle(img, (lidar_x1, lidar_y1), (lidar_x2, lidar_y2), (0,0,255), thickness=10)
        cv2.putText(img, object_class, (lidar_x1, lidar_y1-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (0,0,255), 2)

    res = []

    ### obtain objects' coordinate in lidar coordinate system
    ros_duration_obj = pcl_synced.point_cloud.header.stamp
    t = ros_duration_obj.secs + ros_duration_obj.nsecs * 10e-9
    print("t", t)
    for  n, m in matchings_m_n:
        if m == -1:
            continue
        lidar_raw = raw_lidar_points[m]
        up_left = lidar_raw[0]
        down_right = lidar_raw[1]
        object_class = yolo_bboxes_N_labels[n]
        res.append([int(t), object_class ,up_left[0], up_left[1], up_left[0] - down_right[0], up_left[1] - down_right[1]])


    ## state estimation for pier and person
    cur_piers = []
    cur_person = []
    r = [0] * 8
    for t, cls, x, y, w, h in res:
        pos = np.array([x, y, w, h])
        if cls == 'pier': 
            cur_piers.append([0, pos])
            r[:2] = [x - w/2, y - h/2]
        elif cls == 'person': 
            cur_person.append([t, pos])
            r[2:4] = [x - w/2, y - h/2]

    if len(tracked_piers) == 0: 
        for t, p in cur_piers:
            tracked_piers.append([p, pier_ekf.observation_covariance, t, np.zeros(pier_ekf.initial_state_mean.shape)])
    else:
        tracked_piers = update_track(tracked_piers, cur_piers, pier_ekf)

    if len(tracked_person) == 0: 
        for t, p in cur_person:
            tracked_person.append([p, person_ekf.observation_covariance, t, np.zeros(person_ekf.initial_state_mean.shape)])
    else:
        tracked_person = update_track(tracked_person, cur_person, person_ekf)

    # print("tracked_piers", tracked_piers)
    # print("tracked_persons", tracked_person)

    if len(tracked_piers): r[4:6] = [tracked_piers[0][0][0] - tracked_piers[0][0][2]/2, tracked_piers[0][0][1] - tracked_piers[0][0][3]/2]
    if len(tracked_person): r[6:8] = [tracked_person[0][0][0] - tracked_person[0][0][2]/2, tracked_person[0][0][1] - tracked_person[0][0][3]/2]
    
    #### visualization function
    update_func(r, 8)

    
    # if not os.path.exists("/home/nancy/Desktop/test_single.csv"):
    #     with open('/home/nancy/Desktop/test.csv', 'w') as f: 
    #         writer=csv.writer(f)
    #         writer.writerow(["Time", "class", "x", "y", "z","est_x", "est_y"])
    #         print("create csv")
    # with open('/home/nancy/Desktop/test_single.csv', 'a+') as f:
    #     writer=csv.writer(f)
    #     for i, object_class, x, y, z in res:
    #         if object_class == 'pier':
    #             writer.writerow([i, object_class, x, y, z, pier_mean[0], pier_mean[1]])
                

    # ### record data
    # if not os.path.exists("/home/nancy/Desktop/test.csv"):
    #     with open('/home/nancy/Desktop/test.csv', 'w') as f: 
    #         writer=csv.writer(f)
    #         writer.writerow(["t","cls", "x", "y", "w", "h"])
    #         # writer.writerow(["Time", "class", "x", "y", "z"])
    #         print("create csv")
    # with open('/home/nancy/Desktop/test.csv', 'a+') as f:
    #     writer=csv.writer(f)
    #     if not res == []:
    #         writer.writerow(res)
    #     # for data in res:
    #     #     writer.writerow(data)
        

    
    # print(res)



    ### DONE: matchings_m_n has shape (N, 2) --> each row corresponds to a YOLO bbox detected, and contains [n, m] pair for best matching LIDAR bbox at index "m"

    ### NEXT STEPS: go through the list "matchings_m_n", extract 3D info on shape/location for each LIDAR box, and correspond it to label from YOLO box
    
    cv2.imshow('lidar result', img)
    cv2.waitKey(1)
    

    time_process_finish = time.time()
    # print("Process fps: ", 1/(time_process_finish - last_time))
    last_time = time.time()




def listener(camera_info, image_color, velodyne_points, yolo_bboxes, lidar_bboxes, obstacle_meas):
    # start node
    rospy.init_node('sensor_fusion', anonymous=True)
    rospy.loginfo('CameraInfo topic: %s' % camera_info)
    rospy.loginfo('Image topic: %s' % image_color)
    rospy.loginfo('PointCloud2 topic: %s' % velodyne_points)

    # subscribe topics
    info_sub = message_filters.Subscriber(camera_info, CameraInfo)
    image_sub = message_filters.Subscriber(image_color, Image)
    velodyne_sub = message_filters.Subscriber(velodyne_points, PointCloud2)

    # synchronize topics
    ats = message_filters.ApproximateTimeSynchronizer(
        [image_sub, info_sub, velodyne_sub], queue_size=5, slop=0.1)

    # action initialization
    yolo_client = actionlib.SimpleActionClient(
        yolo_bboxes, fusion2yoloAction)
    lidar_client = actionlib.SimpleActionClient(
        lidar_bboxes, fusion2lidarAction)

    # publish topics
    obstacle_pub = rospy.Subscriber(obstacle_meas, Obstacles)

    # # define figure
    # fig = plt.plot(range(10), range(10))
    # plt.show()

    ats.registerCallback(sensorFusionCallback,  yolo_client,
                         lidar_client, obstacle_pub)
    
    # plt.ion()
    # plt.show()
    plt.show(block = False)

    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down')


if __name__ == '__main__':

    yolo_src = None
    obstacle_meas = None

    # subscribe topics
    camera_info = rospy.get_param('camera_info_topic', '/camera/color/camera_info')
    image_color = rospy.get_param('image_color_topic', '/camera/color/image_raw')
    velodyne_points = rospy.get_param('velodyne_points_topic', '/os_cloud_node/points')
    yolo_bboxes = rospy.get_param('bounding_boxes_topic','/darknet_ros/check_for_objects')
    lidar_bboxes = rospy.get_param('lidar_bboxes_topic', '/lidar_bboxes')

    # publish topics
    obstacle_meas = rospy.get_param(
        'obstacle_meas_topic', '/obstacles_meas')

    # Start subscriber
    listener(camera_info, image_color, velodyne_points,
             yolo_bboxes, lidar_bboxes, obstacle_meas)
