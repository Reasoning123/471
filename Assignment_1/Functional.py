#!/usr/bin/env python


 # Functional.py - Answer1A
         # Author: Cardenuto,ALexander 
         # Date: 09/09/2014
           
def F(i,j):
    if i == j:
        return i
    if  i > j:
        return F(i - j,j)
    else:
        return F(i,j - i)

print ("enter first value: ")
x = int(raw_input())
print ("enter second value: ")
y = int(raw_input())
print(F(x,y))

