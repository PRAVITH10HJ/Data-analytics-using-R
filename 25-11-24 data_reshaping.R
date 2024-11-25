#manipulating data frames
n=c("john","Peter","mark")
sd=c("1980-10-10","1999-12-12","1990-04-05")
ed=c("1989-03-08","2004-09-20","2000-09-23")
service=data.frame(n,sd,ed)
service
#adding extra column
service$period=as.Date(service$ed)-as.Date(service$sd)
service
#going through the data frame and checking for a condition 
service=within(service,{
  highperiod=period>2000
})
service
#inbuilt function
sort(a)
sort(a,decreasing = TRUE)
#order is similar to sort but in return its returns the index value in asecending order
y=c(4,12,6,7,43,1)
x1=c(4,5,2,52,NA,10)
u=c(12,2,3,4,5,NA)
order(x1)
order(u)
u[order(u)]#thsi works as sort function
order(u,na.last = FALSE)
order(y)
order(a)
order(a,decreasing = TRUE)
install.packages("sqldf")
library(sqldf)
x=c(9,5,4,4,24,3)
rank(x)
#data reshaping 
city=c("t","s","h","d")
state=c("f","W","C","co")
zipcode=c(336,980,060,802)
address=cbind(city,state,zipcode)
new.address=data.frame(
  city=c('l',"ch"),
   state=c("CO","FL"),
   zipcode=c(820,339),
  stringsAsFactors = FALSE
)
new.address
all.address<-rbind(address,new.address)
all.address
library(MASS)
head(Pima.te)
head(Pima.tr)
nrow(Pima.te)
nrow(Pima.tr)
merge.pima<-merge(x=Pima.te,y=Pima.tr,
                  by.x =c("bp","bmi"),
                  by.y =c("bp","bmi")
                 )
head(merge.pima)
nrow(merge.pima)
head(ships)
?merge
install.packages("reshape2")
library(reshape2)
molten.ships=melt(ships,id=c("type","year"))
head(molten.ships)
nrow(molten.ships)
nrow(ships)
#grouping function
m=matrix(seq(1,16),4,4)
m
?apply
#in apply 1=rows 2=columns
apply(m,1,min)
apply(m,2,max)
m=array(seq(32),dim=c(4,4,2))
m
apply(m,1,sum)
apply(m,c(1,2),sum)
x=list(a=1,b=c(1:3),c=10:100)
x$a
x$b
x$c
lapply(x,length)
lapply(x,sum)
sapply(x,sum)
sapply(x,length)
