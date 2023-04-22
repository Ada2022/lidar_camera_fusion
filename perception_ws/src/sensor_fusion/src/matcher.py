import numpy as np

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
        

        
    def get_cost_matrix_by_iou(self, detection, tracked):

        iou_matrix = np.zeros((len(detection), len(tracked)))

        if detection[0].cls == 'person': 
            t = detection[0].t
        else:
            t = 0
        for j in range(len(tracked)):
            pos_t =  tracked[j].state
            # pos_t =  tracked[j].predict_next(t)
            rec1 = [pos_t[0] - pos_t[2]/2, pos_t[1] - pos_t[3]/2, pos_t[0] + pos_t[2]/2, pos_t[1] + pos_t[3]/2]
            for i in range(len(detection)):
                pos_p = detection[i].state
                rec2 = [pos_p[0] - pos_p[2]/2, pos_p[1] - pos_p[3]/2, pos_p[0] + pos_p[2]/2, pos_p[1] + pos_p[3]/2]
                iou_matrix[i][j] = self.compute_iou(rec1, rec2)   

        #print("cost_mat", 1-iou_matrix)
        return 1 - iou_matrix
