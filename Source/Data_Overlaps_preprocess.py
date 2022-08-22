import csv
import numpy as np
import matplotlib.pyplot as plt

# with open('../Data/AgentStop_Ped10/Overlap.csv') as Rcsvfile:
with open('../Data/AgentStop_Ped15/Overlap.csv') as Rcsvfile:
# with open('../Data/AgentStop_Ped20/Overlap.csv') as Rcsvfile:

    spamreader = csv.reader(Rcsvfile)

    for row in spamreader:
        ''.join(row)

row = ''.join(row) # list to string
row = row.split(' ')  # split_blank to list

MyOverlap = np.array(row) # list to np
MyOverlap = np.reshape(MyOverlap, (48,2)) # reshape np

f = open('../Result/wOverlaps.csv', 'w')
writer = csv.writer(f)
writer.writerow(['Number', 'Overlaps'])
writer.writerows(MyOverlap)
f.close()

print('Complete wOverlaps')