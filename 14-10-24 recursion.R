#SUM OF N NUMBER USING LOOPS
{
  n=as.integer(readline("enter the number to find the sum"))
  i=1
  sum=0
  while(i<=n){
    sum=sum+i
    i=i+1
  }
  print("the sum is")
  print(sum)
}
#sum of n number using recursion
add=function(a){
  if (a==1){
    return(a)
  }else{
    return(a+add(a-1))
  }
}
add(4)
add(5)
add(7)
#factorial
fac=function(a){
  if(a==1){
    return(a)
  }else{
    return(a*fac(a-1))
  }
}
fac(3)
#fibbonacci using loops
{
  a=as.integer(readline("enter the lenght of series"))
  a=a-2
  f=0
  f1=1
  print("the series is")
  cat(f,f1," ")
  while(a>0){
    s=f+f1
    cat(s," ")
    f=f1
    f1=s
    a=a-1
  }
}
#fibonacci using recursion
{
  
}
