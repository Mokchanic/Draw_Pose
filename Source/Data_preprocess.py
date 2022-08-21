import csv
import numpy as np
import matplotlib.pyplot as plt

with open('Overlap.csv') as Rcsvfile:
    spamreader = csv.reader(Rcsvfile)

    for row in spamreader:
        print(''.join(row))

row = ''.join(row) # list to string
row = row.split(':')  # split_blank to list

MyPose = np.array(row) # list to np
MyPose = np.delete(MyPose, int(len(row)-1))
MyPose = np.reshape(MyPose, (1,48)) # reshape np

print(row)
print(len(row))
print(type(row))
print(MyPose)
print(MyPose.shape)
# print(MyPose[0].size)

with open('write.csv', 'w') as Wcsvfile:
    filednames = ['first_name', 'last_name']
    writer = csv.DictWriter(Wcsvfile, fieldnames=filednames)

    writer.writeheader()
    writer.writerow({'first_name': 'baked', 'last_name': 'beans'})