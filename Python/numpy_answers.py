# Numpy Tutorial Answers
import numpy as np

#1 Convert deg to rad
deg_list = [15,36,45,88,90]
rad_lis = np.deg2rad(deg_list)

#2 Create a null vector (1-d array) of size 10
myArray = np.zeros(10)

#3 Create a null vector (1-d array) of size 10 but with the fifth value being 1
myArray = np.zeros(10)
myArray[4] = 1

#4 Create a vector with values ranging from 10 to 49
myArray = np.arange(10,50)

#5 Reverse a vector (first element becomes the last)
myArray = np.arange(10,50)
myArray = np.flip(myArray)

#6 Create a 3x3 matrix with values ranging from 0 to 8. Multiply by 2.
myArray = np.arange(0,9)
myArray = myArray.reshape(3,3)
myArray = myArray * 2

#7 Mask the all values less than 3 in the matrix formed above.
myArray = np.ma.arange(0,9)
myArray[myArray < 3] = np.ma.masked

# 8 
# Given the list of l=[-.7, -1.5, 14, 0.3, 1, 1.8, 5] , convert to array, 
# mask the integers, and then round all unmasked floats to integer.
l=[-.7, -1.5, 14, 0.3, 1, 1.8, 5]
myArray = np.ma.array(l)
myArray[2] = np.ma.masked
myArray[4] = np.ma.masked
myArray[6] = np.ma.masked

myArray = myArray.astype(int)

