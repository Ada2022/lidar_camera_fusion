#! /usr/bin/env python
# import python pkg
import cv2
import time
import numpy as np

# import matplotlib
# matplotlib.use('Agg')
import matplotlib.pyplot as plt

import Tracker

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
from visualization_msgs.msg import Marker

# import message/action type
# action type with yolo
from sensor_fusion.msg import fusion2yoloAction, fusion2yoloGoal
# message type with yolo
# action type with lidar
from sensor_fusion.msg import fusion2lidarAction, fusion2lidarGoal
# message type with lidar
from sensor_fusion.msg import Obstacle, Obstacles


FIRST_TIME = True
TF_BUFFER = None
TF_LISTENER = None
CAMERA_MODEL = image_geometry.PinholeCameraModel()
CV_BRIDGE = CvBridge()
last_time = 0

tracker = Tracker.Tracker()



def sensorFusionCallback(image, camera_info, ouster,  yolo_client,  lidar_client, obstacle_pub):
    # plt.clf() 

    people_pub, pier_pub = obstacle_pub

    global CAMERA_MODEL, FIRST_TIME, TF_BUFFER, TF_LISTENER, last_time, tracker
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
    pcl_synced.point_cloud = ouster
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
            transform = TF_BUFFER.lookup_transform('world', 'os_lidar', rospy.Time())


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
    # print("t", t)
    for  n, m in matchings_m_n:
        if m == -1:
            continue
        lidar_raw = raw_lidar_points[m]
        up_right = lidar_raw[0]
        down_left = lidar_raw[1]

        object_class = yolo_bboxes_N_labels[n]
        res.append([int(t), object_class ,up_right[0], up_right[1], up_right[0] - down_left[0], up_right[1] - down_left[1]])

    print(res)
    ## state estimation for pier and person
    for t, cls, x, y, w, h in res:
        pos = np.array([x, y, w, h])
        if cls == 'pier': 
            obj = Tracker.Pier()
        elif cls == 'person': 
            obj = Tracker.Person()
        obj.parser_observation(t, cls, pos)

        tracker.add_obj(obj)
        # if cls == 'person':
        #     obj = Tracker.Person()
        #     obj.parser_observation(t, cls, pos)
        #     tracker.add_obj(obj)
    
    tracker.update_obj()


    people_msg = Marker()
    pier_msg = Marker()
    for key, val in tracker.tracked.items():
        if key == 'pier':
            pier_msg.header.frame_id = 'os_lidar'
            pier_msg.type = pier_msg.CUBE_LIST
            pier_msg.action = pier_msg.MODIFY

            pier_msg.scale.x = 0.2
            pier_msg.scale.y = 0.2
            pier_msg.scale.z = 0.8

            pier_msg.color.a = 1.0
            pier_msg.color.g = 1.0

            points = []
            for obj in val:
                vis_data = obj.parser_vis_data()

                point = Point()
                point.x = -vis_data[-1, 0]
                point.y = -vis_data[-1, 1]
                points.append(point)

            pier_msg.points = points
        else:
            people_msg.header.frame_id = 'os_lidar'
            people_msg.type = people_msg.SPHERE_LIST
            people_msg.action = people_msg.MODIFY

            people_msg.scale.x = 1
            people_msg.scale.y = 1
            people_msg.scale.z = 2

            people_msg.color.a = 1.0
            people_msg.color.b = 1.0

            points = []
            for obj in val:
                vis_data = obj.parser_vis_data()

                point = Point()
                point.x = -vis_data[-1, 0]
                point.y = -vis_data[-1, 1]
                points.append(point)

            people_msg.points = points

    people_pub.publish(people_msg)
    pier_pub.publish(pier_msg)

        
    
    # tracker.show_obj()
    # plt.gcf().canvas.get_tk_widget().after(0, tracker.show_obj)
    
    # if not os.path.exists("/home/nancy/Desktop/test_single.csv"):
    #     with open('/home/nancy/Desktop/test.csv', 'w') as f: 
    #         writer=csv.writer(f)
    #         writer.writerow(["t", "cls", "x", "y", "w","h"])
    #         print("create csv")
    # with open('/home/nancy/Desktop/test_single.csv', 'a+') as f:
    #     writer=csv.writer(f)
    #     for t, cls, x, y, w, h in res:
    #         writer.writerow([t, cls, x, y, w, h])
                

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
    rospy.loginfo("Process fps: " + str(1/(time_process_finish - last_time)))
    last_time = time.time()




def listener(camera_info, image_color, ouster_points, yolo_bboxes, lidar_bboxes, obstacle_meas):
    # start node
    rospy.init_node('sensor_fusion', anonymous=True)
    rospy.loginfo('CameraInfo topic: %s' % camera_info)
    rospy.loginfo('Image topic: %s' % image_color)
    rospy.loginfo('PointCloud2 topic: %s' % ouster_points)

    # subscribe topics
    info_sub = message_filters.Subscriber(camera_info, CameraInfo)
    image_sub = message_filters.Subscriber(image_color, Image)
    ouster_sub = message_filters.Subscriber(ouster_points, PointCloud2)

    # synchronize topics
    ats = message_filters.ApproximateTimeSynchronizer(
        [image_sub, info_sub, ouster_sub], queue_size=5, slop=0.1)

    # action initialization
    yolo_client = actionlib.SimpleActionClient(
        yolo_bboxes, fusion2yoloAction)
    lidar_client = actionlib.SimpleActionClient(
        lidar_bboxes, fusion2lidarAction)

    # publish topics
    obstacle_pub = rospy.Subscriber(obstacle_meas, Obstacles)

    people_pub = rospy.Publisher('/persons', Marker, queue_size=10)
    pier_pub = rospy.Publisher('/piers', Marker, queue_size=10)

    # # define figure
    # fig = plt.plot(range(10), range(10))
    # plt.show()

    ats.registerCallback(sensorFusionCallback,  yolo_client,
                         lidar_client, [people_pub, pier_pub])
    
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
    ouster_points = rospy.get_param('ouster_points_topic', '/os_cloud_node/points')
    yolo_bboxes = rospy.get_param('bounding_boxes_topic','/darknet_ros/check_for_objects')
    lidar_bboxes = rospy.get_param('lidar_bboxes_topic', '/lidar_bboxes')

    # publish topics
    obstacle_meas = rospy.get_param(
        'obstacle_meas_topic', '/obstacles_meas')

    # Start subscriber
    listener(camera_info, image_color, ouster_points,
             yolo_bboxes, lidar_bboxes, obstacle_meas)
