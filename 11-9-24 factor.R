vec1=NULL
rm(vec1)
?seq
vec2=seq(1,5)
seq(0,1,length.out = 11)
v1=seq(1,100,by=9)
v1
sum(vec2)
v2=seq(1,60,by=8)
v2[13]=234
sum(v2)
sum(v2,na.rm = TRUE)
v2[2:4]
v2[c(2,4)]

#FACTOR
?factor
v3=c("F","F","M","F","M")
f=factor(v3)
f
#adding new level
f1=factor(v3,levels=c("M","F","T"))
f1
#adding name to the level
f2=factor(v3,levels=c("M","F","T"),labels = c("MALE","FEMALE","TRANS"))
f2
#showing the hierarchy
f3=factor(v3,levels=c("M","F","T"),labels = c("MALE","FEMALE","TRANS"), ordered = TRUE)
f3
is.factor(f3)
f[2]
f1[4]
f1[2]="T"
f1
