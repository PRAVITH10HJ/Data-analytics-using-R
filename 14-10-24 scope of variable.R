#local and global variables
a=12
demo=function(){
  a=90
  cat(a)
}
demo()
cat(a)
d=function(){
  c<-34 #this initializes the as a global variable 
  cat(c)
}
d()
cat(c)
demo1=function(){
  b=90
  cat(b)
}
b #local variables are not used in global