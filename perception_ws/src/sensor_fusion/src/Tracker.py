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

        self.predict_state = np.zeros(6)

    def parser_observation(self, timestamp,  cls, pos):
        temp = [pos[0] + pos[2]/2, pos[1] + pos[3]/2, pos[2], pos[3]]
        self.observed_state = np.array(temp)
        self.last_t = self.t
        self.t = timestamp

        if np.array_equal(self.state, np.zeros(6)):
            temp = [pos[0] + pos[2]/2, pos[1] + pos[3]/2, pos[2], pos[3], 0 , 0]
            self.state = np.array(temp)
    
    def predict_next(self, t):
        if np.array_equal(self.state, np.zeros(6)):
            self.predict_state = self.state
        else:
            delta_t = t - self.t
            self.predict_state[0] += self.predict_state[-2] * delta_t
            self.predict_state[1] += self.predict_state[-1] * delta_t
        print('debug', self.state, self.predict_state)
        return self.predict_state
        
    def parser_vis_data(self):
        center = [self.state[0], self.state[1] , self.observed_state[0], self.observed_state[1]]
        self.history.append(center)
        return np.array(self.history)
    
class Pier(object):
    def __init__(self):
        super(Pier, self).__init__()
        self.state = np.zeros(4)
        self.state_cov = np.zeros((4, 4))
        self.cls = 'pier'
    
    def predict_next(self, t = None):
        return self.state


    def parser_observation(self, timestamp, cls, pos):
        self.observed_state = [pos[0] + pos[2]/2, pos[1] + pos[3]/2, pos[2], pos[3]]

        if np.array_equal(self.state, np.zeros(4)):
            self.state = self.observed_state

    def parser_vis_data(self):
        center = [self.state[0], self.state[1] , self.observed_state[0], self.observed_state[1]]
        self.history.append(center)
        return np.array(self.history)


class Estimator:
    def __init__(self):
        self.filters = {}
        self.createKalmanFilter()


    def createKalmanFilter(self): 
        
        # pier
        state_dim = 4
        obs_dim = 4

        initial_state_mean = np.zeros(state_dim) #[n_dim_state] array
        initial_state_covariance = 0.3 * np.eye(state_dim)
        transition_matrix = np.eye(state_dim)
        observation_matrix = np.eye(obs_dim)

        transition_covariance = 0.3 * np.eye(state_dim) #[n_dim_state, n_dim_state] array
        observation_covariance = 0.3 * np.eye(obs_dim)

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

        initial_state_mean = np.zeros(state_dim) #[n_dim_state] array
        initial_state_covariance = 0.3 * np.eye(state_dim) #[n_dim_state, n_dim_state] array
        transition_matrix = np.eye(state_dim)
        observation_matrix = np.zeros((ob_dim, state_dim))
        observation_matrix[:ob_dim, :ob_dim] = np.eye(ob_dim) #[n_dim_obs, n_dim_state] array

        state_pos_cov = 0.5
        state_vel_cov = 2.2
        state_dim_cov = 0.1
        transition_covariance = np.eye(state_dim)
        transition_covariance[:2, :] = state_pos_cov * transition_covariance[:2, :]
        transition_covariance[2:4, :] = state_vel_cov * transition_covariance[2:4, :]
        transition_covariance[4:, :] = state_dim_cov * transition_covariance[4:, :]

        obs_pos_cov = 2
        obs_dim_cov = 0.5
        observation_covariance = np.eye(ob_dim)
        observation_covariance[:2, :] = obs_pos_cov * observation_covariance[:2, :]
        observation_covariance[2:, :] = obs_dim_cov * observation_covariance[2:, :]

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
            else:
                delta_t = 0

            new_state, new_cov = kf.filter_update(obj.state, obj.state_cov, obj.observed_state, transition_matrix = transition_matrix)
            obj.state[-2] = (new_state[0] - obj.state[0])/delta_t if delta_t != 0 else 0.1
            obj.state[-1] = (new_state[1] - obj.state[1])/delta_t if delta_t != 0 else 0.1
            
        else:
            new_state, new_cov = kf.filter_update(obj.state, obj.state_cov, obj.observed_state)

        print(obj.cls, new_state, obj.state,obj.observed_state)
        obj.parser_update(new_state, new_cov)
        



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
        
    def compute_dis(self, rec1, rec2):
        c1 = [rec1[0] + rec1[2]/2, rec1[1] + rec1[3]/2]
        c2 = [rec2[0] + rec2[2]/2, rec2[1] + rec2[3]/2]
        return np.linalg.norm(np.array(c1) -np.array( c2))
        
    def get_cost_matrix_by_iou(self, tracked, detection):

        iou_matrix = np.zeros((len(tracked), len(detection)))

        if detection[0].cls == 'person': 
            t = detection[0].t
        else:
            t = 0
        for i in range(len(tracked)):
            #pos_t =  tracked[i].state
            pos_t =  tracked[i].predict_next(t)
            rec1 = [pos_t[0] - pos_t[2]/2, pos_t[1] - pos_t[3]/2, pos_t[0] + pos_t[2]/2, pos_t[1] + pos_t[3]/2]
            for j in range(len(detection)):
                pos_p = detection[j].state
                rec2 = [pos_p[0] - pos_p[2]/2, pos_p[1] - pos_p[3]/2, pos_p[0] + pos_p[2]/2, pos_p[1] + pos_p[3]/2]
                iou_matrix[i][j] = self.compute_iou(rec1, rec2)   

        #print("cost_mat", 1-iou_matrix)
        return 1 - iou_matrix

    def get_cost_matrix_by_dis(self, tracked, detection):
     
        dis_matrix = np.zeros((len(tracked), len(detection)))
      
        t = tracked[0].t

        for i in range(len(tracked)):
            pos_t =  tracked[i].predict_next(t)
            rec1 = [pos_t[0] - pos_t[2]/2, pos_t[1] - pos_t[3]/2, pos_t[2], pos_t[3]]
        for j in range(len(detection)):
            pos_p = detection[j].state
            rec2 = [pos_p[0] - pos_p[2]/2, pos_p[1] - pos_p[3]/2, pos_p[2], pos_p[3]]
            dis_matrix[i][j] = self.compute_dis(rec1, rec2)   

        #print("cost_mat", 1-iou_matrix)
        return dis_matrix

    def hugarian_algo(self, tracked, cur):
        cls = tracked[0].cls
        if cls == 'pier':
            row_idx, col_idx = linear_sum_assignment(self.get_cost_matrix_by_iou(tracked, cur))
        else:
            row_idx, col_idx = linear_sum_assignment(self.get_cost_matrix_by_iou(tracked, cur))
        return row_idx, col_idx

class Tracker():
    def __init__(self):
        self.matcher = Matcher()
        self.estimator = Estimator()
        self.detection = {}
        self.tracked = {}
        self.max_age = 5
        self.iou_threshold = {'person': 0.2, 'pier': 0.05}
        self.markers = {'pier': list(mcolors.CSS4_COLORS.keys()),
                   'person': list(reversed(list(mcolors.CSS4_COLORS.keys())))}
        
    def add_obj(self, obj):
        if obj.cls in self.detection:
            self.detection[obj.cls].append(obj)
        else:
            self.detection[obj.cls] = [obj]

    def associate_detections_to_trackers(self, detections,trackers,iou_threshold = 0.2):
        """
        Assigns detections to tracked object (both represented as bounding boxes)
        Returns 3 lists of matches, unmatched_detections and unmatched_trackers
        """
        if(len(trackers)==0):
            return np.empty((0,2),dtype=int), np.arange(len(detections)), np.empty((0,4),dtype=int)

        cost_matrix = self.matcher.get_cost_matrix_by_iou(detections, trackers)
        

        row_idx, col_idx = linear_sum_assignment(cost_matrix)
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
        iou_matrix = 1 - cost_matrix
        print(iou_matrix)
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
        """
        Params:
        dets - a numpy array of detections in the format [[x1,y1,x2,y2,score],[x1,y1,x2,y2,score],...]
        Requires: this method must be called once for each frame even with empty detections (use np.empty((0, 5)) for frames without detections).
        Returns the a similar array, where the last column is the object ID.
        NOTE: The number of objects returned may differ from the number of detections provided.
        """
        
        # get predicted locations from existing trackers.
        for key, val in self.detection.items():
            if key not in self.tracked:
                self.tracked[key] = val
                continue

            matched, unmatched_dets, unmatched_trks = self.associate_detections_to_trackers(self.detection[key], self.tracked[key], self.iou_threshold[key])
            print(key, matched, unmatched_dets, unmatched_trks)
            # update matched trackers with assigned detections
            for m in matched:
                obj = self.detection[key][m[0]]
                tracked_obj = self.tracked[key][m[1]]
                tracked_obj.observed_state = obj.observed_state
                self.estimator.updateEstimate(tracked_obj)

            

            # create and initialise new trackers for unmatched detections
            for i in unmatched_dets:
                obj = self.detection[key][i]
                self.tracked[key].append(obj)
            # remove dead tracklet
            to_del = []
            for j in unmatched_trks:
                self.tracked[key][j].age += 1
                age = self.tracked[key][j].age
                if age > self.max_age:
                    to_del.append(j)

            for del_idx in reversed(to_del):
                del self.tracked[key][del_idx]

            for i in self.detection[key]:
                print("self.detection:", i.state[:4])
            for j in self.tracked[key]:
                print("tracked:", j.state[:4])
        
        self.detection = {}

    def show_obj(self):
        for key, val in self.tracked.items():
            idx = 0
            for obj in val:
                vis_data = obj.parser_vis_data()
                plt.plot(-vis_data[:, 0], -vis_data[:, 1], color = self.markers[key][2*idx], marker = '.', label = obj.cls + '_Estimation')
                plt.plot(-vis_data[:, 2], -vis_data[:, 3], '.' ,color = self.markers[key][2*idx+1], label = obj.cls + '_Measurement')
                idx += 1

        plt.draw()
        plt.legend()
        plt.pause(0.001)
        plt.clf()