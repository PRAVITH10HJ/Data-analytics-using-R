a<-c(1,2,3)
b=c("a","b","c")
d=c("Y","N","Y")
df1=data.frame(a,b,d)
df1
#changing y,n to true and false
con=function(x){
  y<-rep.int(NA,length(x))
  y[x=="Y"]<-TRUE
  y[x=="N"]<-FALSE
  y
}
df1$d=con(df1$d)
df1
#pattern matching and pattern checking
grep("trr","the name of the singer is it")
grepl("t","the name of the singer is it")
sub("t","k","the name of the singer is it")
gsub("t","k","the name of the singer is it")
library(stringr)
str_detect("the name of the singer is it",'it')
str_split("the name of the singer is it"," ")
str_count("the name of the singer is it","i")
str_replace("the name of the singer is it","e","a")
str_replace_all("the name of the singer is it","a","r")

