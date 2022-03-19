#!/usr/bin/env python3.4
import random

sum=0
fio=list()
duration=list()
price=list()
cost=list()
for i in range(70):
    fio.insert(i+1,"Ivanov")
    duration.insert(i+1,random.randrange(100000,900000))
    price.insert(i+1,200)
    cost.insert(i+1,duration[i]*price[i])
    #print(i, fio[i], duration[i], price[i], cost[i])
    print(i+1, duration[i], sep=' ', end='    ')
    
'''
for i in range(len(fio)): 
    sum=sum+duration[i]*price[i]
    print (i, (duration[i]*price[i]), sum)
'''
