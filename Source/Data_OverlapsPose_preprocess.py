import csv
import numpy as np

with open('../Data/complete.csv') as Rcsvfile:

    spamreader = csv.reader(Rcsvfile)

    for row in spamreader:
        ''.join(row)

row = ''.join(row) # list to string
row = row.split(' ')  # split_blank to list

length = int(len(row)/3)

MyOverlapPose = np.array(row)
MyOverlapPose = np.reshape(MyOverlapPose, (length, 3))

f = open('../Result/wPedOverlap.csv', 'w')
writer = csv.writer(f)
writer.writerow(['x_axis', 'y_axis', 'yaw'])
writer.writerows(MyOverlapPose)
f.close()

print('Complete wRelPose')
