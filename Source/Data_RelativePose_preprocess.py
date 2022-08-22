import csv
import numpy as np

# with open('../Data/AgentStop_Ped10/RelativePose.csv') as Rcsvfile:
with open('../Data/AgentStop_Ped20/RelativePose.csv') as Rcsvfile:

    spamreader = csv.reader(Rcsvfile)

    for row in spamreader:
        ''.join(row)

row = ''.join(row) # list to string
row = row.split(' ')  # split_blank to list

length = int(len(row)/2)

MyRelPose = np.array(row)
MyRelPose = np.reshape(MyRelPose, (length, 2))

f = open('../Result/wRelPose.csv', 'w')
writer = csv.writer(f)
writer.writerow(['x_axis', 'y_axis'])
writer.writerows(MyRelPose)
f.close()

print('Complete wRelPose')
