#conditional addition
{
  {
  num1=as.integer(readline(("enterr the first number")))
  num2=as.integer(readline(("enterr the second number")))
}
if(num1>num2)
{
  sum=num1+num2 
  paste(sum)
}else{
    dif=num2-num1
    paste(dif)
}
}
#greatest of 3
{
{
  a=as.integer(readline(("enterr the first number")))
  b=as.integer(readline(("enterr the second number")))
  c=as.integer(readline(("enterr the third number")))
}
if(a>b&&a>c)
{
  cat(a,"is greatest")
}else if(b>c&&b>a){
  cat(b,"is greatest")
}else{
  cat(c,'is the greatest')
}
}
# checking if even or odd 
{
  nu=as.integer(readline(("enterr the number")))
  if(nu>0){
    if(nu%%2==0){
      cat(nu,"is a positive even")
    }else{
      cat(nu,"is a positive odd")
    }
  }else if(nu<0){
    if(nu%%2==0){
      cat(nu,"is a negative even")
    }else{
      cat(nu,"is a negative odd")
    }
  }else{
    cat(nu,"is zero")
  }
}
?switch