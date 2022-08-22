import csv
import numpy as np
import matplotlib.pyplot as plt

# with open('../Data/AgentStop_Ped10/CollisionPose.csv') as Rcsvfile:
# with open('../Data/AgentStop_Ped15/CollisionPose.csv') as Rcsvfile:
# with open('../Data/AgentStop_Ped20/CollisionPose.csv') as Rcsvfile:
# with open('../Data/AgentMove_Ped10/CollisionPose.csv') as Rcsvfile:
# with open('../Data/AgentMove_Ped15/CollisionPose.csv') as Rcsvfile:
with open('../Data/AgentMove_Ped20/CollisionPose.csv') as Rcsvfile:

    spamreader = csv.reader(Rcsvfile)

    for row in spamreader:
        ''.join(row)

row = ''.join(row) # list to string
row = row.split(' ')  # split_blank to list

length = int(len(row)/2)

MyColPose = np.array(row)
MyColPose = np.reshape(MyColPose, (length, 2))

f = open('../Result/wColPose.csv', 'w')
writer = csv.writer(f)
writer.writerow(['x_axis', 'y_axis'])
writer.writerows(MyColPose)
f.close()

print('Complete wColPose')