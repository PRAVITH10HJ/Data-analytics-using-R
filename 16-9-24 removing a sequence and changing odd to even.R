ar1=c(1,2,3,4,5,6,7,8,9,10)
#changing odd to even 
ar2=ar1[ar1%%2!=0]+1
ar2
#removing the sequence of data from array
ar1[-2]
ar1[-1:-3]
#removing the sequence of data from another array
ar3=c(1,4,3,7)
na=ar1[ar1 %in% ar3]
na
