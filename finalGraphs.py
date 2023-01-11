#!/usr/bin/env python3
import matplotlib.pyplot as plt
import math
import numpy as np

#load unfitered data into a dictionary 
file = open("allThree.txt", "r")
x = []
y = []

for f in file:
    f = f.split("|")
    x.append(int(f[1]))
    y.append(math.log(float(f[2])))

#load filtered data into dictionary 
file2 = open("goyishData", "r")
x2 = []
y2 = []

for f in file2:
    f = f.split("|")
    x2.append(int(f[1]))
    y2.append(math.log(float(f[2])))

    
# the graphing

#build the graph
fig, ax =  plt.subplots()


#plot the points
ax.scatter(x,y, label='unfiltered data')
ax.scatter(x2, y2, label= 'filtered data')

#labels and legend
ax.set_xlabel('Number of cafeterias/restaurants with missing posters')
ax.set_ylabel('Number of reported choking incidents per capita (log)')
ax.set_title('Choking Incidents and Eateries with Missing Choking First Aid Instructions\n per zip code in NYC')
ax.legend()

fig.savefig('FinalGraph.pdf')

plt.show()
        
        



