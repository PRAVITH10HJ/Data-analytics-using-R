add1<-function(a)
{
  a=10
  b=20
  print(a+b)
}
add1()
add1(5)
add1(5,10)
#even odd
eo<-function(a=25){   #a=25 is given as default value so values passed as argument will be executed
  if(a%%2==0){
    return("the number is even")
  }else{
    return("the number is odd")
  }
}
eo(34)
eo(9)
eo()
#area

area=function(a=10,b=10){
  c=a*b
  return(c)
}
area(,43)
area(33,)
area()
area(24,45)
area(b=90,a=88) #the values are taken as of the argument

#factorial
  #with loops
{
  n=as.integer(readline("enter the number for factorial:"))
  i=1
  f=1
  while(i<=n){
    f=f*i
    i=i+1
  }
  cat(f)
}
  #with function
fac=function(a){
  if(a==1){
    return(a)
  }else{
    return(a*fac(a-1))
  }
}
fac(3)
fac(4)
fac(7)

# divisible by 5
div=function(a=5){
  if(a%%55==0){
    print("the number is divisible")
  }else{
    print("the number is not divisible")
  }
}
div(34)
div()
names(methods:::.BasicFunsList) # to get all the inbuilt in r

#sum function
v1=c(23,53,32,453)
v2=c(256,67,88,55)
sum(v1)
sum(v2)
max(v1)
mean(v1)
mean(v2)
median(v1)
print(v1+v2)
print(v1+10)

V1=c(4,6,8,10)
V2=c(2,8,7)
V1+V2
V1-V2
V1*V2
V1/V2
c(1+2,4-1,3,7+3)==3

