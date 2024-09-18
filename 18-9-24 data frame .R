#create a employee list
emp_list=list(emp_id=c(101,102,103,104),emp_name=c('a',"b","c","d"),nemp=4)
emp_list
?data.frame
#data frames
uid=c(1,2,3,4,NA)
uname=c("a","r","u","b","d")
srth=c(1200,980,1400,990,1000)
res=c(80,85,83,80,78)
loc=c("n","n","s","s","w")
uni_data=data.frame("ID"=uid,"Name"=uname,srth,res,loc)
print(uni_data)
str(uni_data)
summary(uni_data)
