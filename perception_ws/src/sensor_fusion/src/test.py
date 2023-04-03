import numpy as np
import csv


import matplotlib.pyplot as plt 
import Tracker



tracker = Tracker.Tracker()
data_pth = './test_single.csv'
with open(data_pth) as f:
    reader = csv.reader(f)
    last_t = 0
    tmp = None
    res_seq = []
    for idx, data in enumerate(reader):
        
        if last_t == 0: last_t = data[0]
        if data[0] != last_t:
            tmp = res_seq
            res_seq = [data]
            last_t = data[0]
        else:
            res_seq.append(data)
            continue

        for res in tmp:
            t, cls, x, y, w, h  = res
            t = int(t)
            x = float(x)
            y = float(y)
            w = float(w)
            h = float(h)
            pos = np.array([x, y, w, h])
            if cls == 'pier': 
                obj = Tracker.Pier()
            elif cls == 'person': 
                obj = Tracker.Person()
            obj.parser_observation(t, cls, pos)

            tracker.add_obj(obj)
        
        tracker.update_obj()
        tracker.show_obj()    

plt.show(block = False)