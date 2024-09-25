#5 times printing
{
  i=0
  while(i<5){
    cat("hello everyone \n")
    i=i+1
  }
}
# 1 to 5
{
  i=1
  cat("ther number are \n")
  while (i<=5) {
    cat(i,"\n")
    i=i+1
  }
}
# 5 to 1
{
  i=5
  cat("the reverse nuber are \n")
  while (i>0) {
    cat(i,"\n")
    i=i-1
  }
}
#square 1 to 10
{
  i=1
  while (i<=10) {
    if(i%%2==0){
      cat(i*i,"\n")
    }
    i=i+1
  }
}
