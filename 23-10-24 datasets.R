?data()
data("kidney",package = "survival")
data()
iris
d=iris
d
View(d)
head(d)
tail(d)
summary(d) #show min, max mean, of the column
str(d) # this give out the structure of the data set variables=column and observation=rows
#if there is missing data the str or summary NA will be printed
n=BOD
n
summary(n)
str(n)
#importing and exporting files
#structured data
?read.table 
read.table("CSV.csv")
read.table(file.choose(),header=FALSE,sep=",") #file.choose is used to get any type of files from the storage
dt=read.table(file.choose(),header=TRUE,sep=",")
getwd()
summary(dt)
str(dt)
View(dt)
?read.csv
c=read.csv("CSV.csv",header = TRUE,sep=",")
read.csv(file.choose(),header = FALSE,sep=",")
read.csv(file.choose(),header = TRUE,sep=",")
c$ROLL.NO
min(c$ROLL.NO)#this function finds out the min in the column
c1=read.csv("CSV.csv",header = TRUE,sep=",",nrow=2)#this reds out only 2 rows from the file
c2=read.csv("CSV.csv",header = TRUE,sep=",",skip=1)#this skips out no of given rows
#to store the data from r to the local storage
empid=c(1002,1004,2004,4322,3432)
yoj=c(2005,2009,2010,2019,1999)
exp=c(19,15,14,5,25)
emp=data.frame("Employee_id"=empid,"Year_of_joining"=yoj,"Experince"=exp)
emp
?write.csv
write.csv(emp,"employee.csv")#this function stores the data of data frame from r to local storage with name specified namw
#the above function give an extra column with numbering the rows
#write.table also does the same job
write.csv(emp,"employee1.csv",row.names = FALSE)#this function the extra column will be removed
#unstructured data
?readline
re=readLines(file.choose())#this reads the file from the local storage to the console
View(re)
re
?writeLines()
