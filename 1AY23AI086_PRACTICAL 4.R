fac=function(a){
  if(a==1){
    return(a)
  }else{
    return(a*fac(a-1))
  }
}
{
  n=as.double(readline("enter the number to find ti factorial:"))
  result=fac(n)
  cat("the factorial of",n,"is",result)
}
