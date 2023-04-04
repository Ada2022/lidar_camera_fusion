from abc import ABCMeta, abstractmethod

import numpy as np
import matplotlib.pyplot as plt

from pykalman import KalmanFilter
from scipy.optimize import linear_sum_assignment

import matplotlib.pyplot as plt
import matplotlib.colors as mcolors

class object():
    __metaclass__ = ABCMeta

    def __init__(self):
        self.id = None
        self.age = 0

        self.state = None 
        self.state_cov = None

        self.observed_state = None
        self.cls = None
        self.history = []

    @abstractmethod
    def parser_observation(self, timestamp, cls, pos):
        pass

    @abstractmethod
    def parser_vis_data(self):
        pass

    def parser_update(self, new_status_mean, new_status_cov):
        self.state  = new_status_mean
        self.state_cov = new_status_cov
    
    def assign_id(self, id):
        self.id = id


class Person(object):
    def __init__(self):
        super(Person, self).__init__()
        self.state = np.zeros(6)
        self.state_cov = np.zeros((6, 6))
        self.cls = 'person'
        self.t = 0
        self.last_t = 0 # to compute delta_t


    def parser_observation(self, timestamp,  cls, pos):
        if self.state[0] == 0:
            temp = list(pos)
            temp.extend([0, 0])
            self.state = np.array(temp)

        self.last_t = self.t
        self.t = timestamp
        self.observed_state = pos

    def parser_vis_data(self):
        center = [self.state[0] - self.state[2]/2, self.state[1] - self.state[3]/2]
        ob_center = [self.observed_state[0] - self.observed_state[2]/2, self.observed_state[1] - self.observed_state[3]/2]
        center.extend(ob_center)
        self.history.append(center)
        return np.array(self.history)
    
class Pier(object):
    def __init__(self):
        super(Pier, self).__init__()
        self.state = np.zeros(4)
        self.state_cov = np.zeros((4, 4))
        self.cls = 'pier'


    def parser_observation(self, timestamp, cls, pos):
        if self.state[0] == 0:
            self.state = pos

        self.observed_state = pos

    def parser_vis_data(self):
        center = [self.state[0] - self.state[2]/2, self.state[1] - self.state[3]/2]
        ob_center = [self.observed_state[0] - self.observed_state[2]/2, self.observed_state[1] - self.observed_state[3]/2]
        center.extend(ob_center)
        self.history.append(center)
        return np.array(self.history)

class Estimator:
    def __init__(self):
        self.filters = {}
        self.createKalmanFilter()


    def createKalmanFilter(self): 
        
        # pier
        state_dim = 4
        transition_matrix = np.eye(state_dim)
        transition_covariance = 0.3 * np.eye(state_dim) #[n_dim_state, n_dim_state] array
        observation_covariance = 0.3 * np.eye(state_dim)
        observation_matrix = np.eye(state_dim)
        initial_state_mean = np.zeros(state_dim) #[n_dim_state] array
        initial_state_covariance = 0.3 * np.eye(state_dim)
        pier_kf = KalmanFilter(transition_matrices=transition_matrix,
                        observation_matrices=observation_matrix,
                        initial_state_mean=initial_state_mean,
                        initial_state_covariance=initial_state_covariance,
                        transition_covariance=transition_covariance,
                        observation_covariance=observation_covariance)
        self.filters['pier'] =  pier_kf

        # person
        state_dim = 6
        ob_dim = 4
        pos_cov = 2
        vel_cov = 4
        dim_cov = 1
        initial_state_mean = np.zeros(state_dim) #[n_dim_state] array
        initial_state_covariance = 0.3 * np.eye(state_dim) #[n_dim_state, n_dim_state] array
        transition_matrix = np.eye(state_dim)
        transition_covariance = np.eye(state_dim)
        transition_covariance[:2, :] = pos_cov * transition_covariance[:2, :]
        transition_covariance[2:4, :] = dim_cov * transition_covariance[2:4, :]
        transition_covariance[4:, :] = vel_cov * transition_covariance[4:, :]
        observation_covariance = np.eye(ob_dim)
        observation_covariance[:2, :] = pos_cov * observation_covariance[:2, :]
        observation_covariance[2:, :] = dim_cov * observation_covariance[2:, :]
        observation_matrix = np.zeros((ob_dim, state_dim))
        observation_matrix[:ob_dim, :ob_dim] = np.eye(ob_dim) #[n_dim_obs, n_dim_state] array
        person_kf = KalmanFilter(transition_matrices=transition_matrix,
                        observation_matrices=observation_matrix,
                        initial_state_mean=initial_state_mean,
                        initial_state_covariance=initial_state_covariance,
                        transition_covariance=transition_covariance,
                        observation_covariance=observation_covariance)
        self.filters['person'] =  person_kf

            

    def updateEstimate(self, obj):

        kf = self.filters[obj.cls]
        
        if obj.cls == 'person':
            transition_matrix = kf.transition_matrices
            if obj.last_t != 0: # if this person has appeared in the scene, update transistion matrix
                delta_t = obj.t - obj.last_t
                transition_matrix[0][4] = delta_t
                transition_matrix[1][5] = delta_t
            new_state, new_cov = kf.filter_update(obj.state, obj.state_cov, obj.observed_state, transition_matrix = transition_matrix)
        else:
            new_state, new_cov = kf.filter_update(obj.state, obj.state_cov, obj.observed_state)

        obj.parser_update(new_state, new_cov)
        # print(obj.cls, new_state, obj.state,obj.observed_state)



class Matcher():
    def __init__(self):
        pass


    def compute_iou(self, rec1,rec2):
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
        
    def get_cost_matrix_by_iou(self, tracked, predict):
        match_nums = max(len(tracked), len(predict))
        iou_matrix = np.zeros((match_nums, match_nums))


        for i in range(len(tracked)):
            pos_t =  tracked[i].state
            for j in range(len(predict)):
                pos_p = predict[j].state
                iou_matrix[i][j] =  self.compute_iou(pos_t, pos_p)   

        return 1 - iou_matrix

    def hugarian_algo(self, tracked, cur):
        row_idx, col_idx = linear_sum_assignment(self.get_cost_matrix_by_iou(tracked, cur))
        return row_idx, col_idx






class Tracker():
    def __init__(self):
        self.matcher = Matcher()
        self.estimator = Estimator()
        self.cur_track = {}
        self.max_age = 5
        self.tracked = {}
        self.markers = {'pier': ['c-', 'r.',  'y-', 'g.',  'm-', 'b.'],
                   'person': ['m-', 'b.',  'c-', 'r.',  'y-', 'g.']}
        self.colors = {'pier': ['aliceblue', 'antiquewhite', 'aqua', 'aquamarine', 'azure', 'beige', 'bisque', 'black' ],
                   'person': ['blanchedalmond', 'blue',  'blueviolet', 'brown',  'y-', 'g.']}
        
    def add_obj(self, obj):
        if obj.cls in self.cur_track:
            self.cur_track[obj.cls].append(obj)
        else:
            self.cur_track[obj.cls] = [obj]

    def match_obj(self):
        #### did not implement when the frame didn't detect anything       
        for key, val in self.cur_track.items():
            if key not in self.tracked:
                self.tracked[key] = val
                continue
            row_idx, col_idx = self.matcher.hugarian_algo(self.tracked[key], self.cur_track[key])
            del_idx = []
            for i in range(len(row_idx)):
                if row_idx[i] > len(self.tracked[key]) - 1: # tracked_obj less than cur(some apeared from scene)
                    obj = self.cur_track[key][col_idx[i]]
                    self.tracked[key].apend(obj)
                elif col_idx[i] > len(self.cur_track[key]) - 1: # tracked obj more than cur(some disapeared from scene) 
                    del_idx.append(row_idx[i])
                else: #update observation
                    obj = self.cur_track[key][col_idx[i]]
                    tracked_obj = self.tracked[key][row_idx[i]]
                    tracked_obj.observed_state = obj.observed_state

    def associate_detections_to_trackers(self, detections,trackers,iou_threshold = 0.3):
        """
        Assigns detections to tracked object (both represented as bounding boxes)
        Returns 3 lists of matches, unmatched_detections and unmatched_trackers
        """
        if(len(trackers)==0):
            return np.empty((0,2),dtype=int), np.arange(len(detections)), np.empty((0,4),dtype=int)

        iou_matrix = 1 - self.matcher.get_cost_matrix_by_iou(detections, trackers)
        judge_matrix = (iou_matrix < iou_threshold).astype(np.int32)
        if judge_matrix.sum(1).max() == 1 and judge_matrix.sum(0).max == 1: #### if matching result is only
            matched_indices = np.stack(np.where(judge_matrix), axis=1)
        else:
            row_idx, col_idx = linear_sum_assignment(1 - iou_matrix)
            matched_indices = np.array(list(zip(row_idx, col_idx)))


        #### find unmatched detections and unmatched trackers
        unmatched_detections = []
        for d, det in enumerate(detections):
            if(d not in matched_indices[:,0]):
                unmatched_detections.append(d)

        unmatched_trackers = []
        for t, trk in enumerate(trackers):
            if(t not in matched_indices[:,1]):
                unmatched_trackers.append(t)

        #filter out matched with low IOU
        matches = []
        for m in matched_indices:
            if(iou_matrix[m[0], m[1]] < iou_threshold):
                unmatched_detections.append(m[0])
                unmatched_trackers.append(m[1])
            else:
                matches.append(m.reshape(1,2))

        if(len(matches)==0):
            matches = np.empty((0,2),dtype=int)
        else:
            matches = np.concatenate(matches,axis=0)

        return matches, np.array(unmatched_detections), np.array(unmatched_trackers)

    def update_obj(self):
        # self.match_obj()
        # self.cur_track = {}
        # for key, val in self.tracked.items():
        #     for obj in val:
        #         self.estimator.updateEstimate(obj)
        """
        Params:
        dets - a numpy array of detections in the format [[x1,y1,x2,y2,score],[x1,y1,x2,y2,score],...]
        Requires: this method must be called once for each frame even with empty detections (use np.empty((0, 5)) for frames without detections).
        Returns the a similar array, where the last column is the object ID.
        NOTE: The number of objects returned may differ from the number of detections provided.
        """

        # get predicted locations from existing trackers.
        for key, val in self.cur_track.items():
            if key not in self.tracked:
                self.tracked[key] = val

            matched, unmatched_dets, unmatched_trks = self.associate_detections_to_trackers(self.tracked[key], self.cur_track[key], self.iou_threshold)

            # update matched trackers with assigned detections
            for m in matched:
                obj = self.cur_track[key][m[1]]
                tracked_obj = self.tracked[key][m[0]]
                tracked_obj.observed_state = obj.observed_state
                self.estimator.updateEstimate(obj)

            # create and initialise new trackers for unmatched detections
            for i in unmatched_dets:
                obj = self.cur_track[key][i]
                self.tracked[key].apend(obj)
            # remove dead tracklet
            to_del = []
            for j in unmatched_trks:
                self.tracked[key].age += 1
                age = self.tracked[key].age
                if age > self.max_age:
                    to_del.append(j)
            for del_idx in reversed(to_del):
                del self.tracked[key][del_idx]

    def show_obj(self):
        for key, val in self.tracked.items():
            idx = 0
            for obj in val:
                vis_data = obj.parser_vis_data()
                plt.plot(vis_data[:, 0], vis_data[:, 1], self.markers[key][2*idx])
                plt.plot(vis_data[:, 2], vis_data[:, 3], self.markers[key][2*idx+1])
                idx += 1
        plt.draw()
        plt.pause(0.001)


    def match_obj(self):
        #### did not implement when the frame didn't detect anything       
        for key, val in self.cur_track.items():
            if key not in self.tracked:
                self.tracked[key] = val
                continue
            row_idx, col_idx = self.matcher.hugarian_algo(self.tracked[key], self.cur_track[key])
            del_idx = []
            for i in range(len(row_idx)):
                if row_idx[i] > len(self.tracked[key]) - 1: # tracked_obj less than cur(some apeared from scene)
                    obj = self.cur_track[key][col_idx[i]]
                    self.tracked[key].append(obj)
                elif col_idx[i] > len(self.cur_track[key]) - 1: # tracked obj more than cur(some disapeared from scene) 
                    del_idx.append(row_idx[i])
                else: #update observation
                    obj = self.cur_track[key][col_idx[i]]
                    tracked_obj = self.tracked[key][row_idx[i]]
                    tracked_obj.observed_state = obj.observed_state

            print(key, row_idx, col_idx)
            for i in val:
                print("cur_track:", i.state[:4])
            for j in self.tracked[key]:
                print("tracked:", j.state[:4])



    def update_obj(self):
        self.match_obj()
        self.cur_track = {}
        for key, val in self.tracked.items():
            for obj in val:
                self.estimator.updateEstimate(obj)