#!/usr/bin/env python

 # Ackerman.py - Answer6B
         # Author: Cardenuto,ALexander 
         # Date: 09/09/2014
           
def Ack(m,n):
    if m == 0:
        return n + 1
    if n == 0 and m > 0:
       return  Ack(m-1,1)
    if n > 0 and m > 0:
        return Ack(m-1,Ack(m,n-1))

print ("enter first value: ")
x = int(raw_input())
print ("enter second value: ")
y = int(raw_input())
print(Ack(x,y))
