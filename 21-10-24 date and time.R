Sys.time() #give out date and time from POSIXct
t=Sys.time()
t1=as.POSIXlt(t)#stores in posixlt form 
t
t1
class(t)
class(t1)
t1$sec #prints out seconds of the t1
t$sec #accessing data can only be done by posixlt
t1$min
t1$hour 
t2=as.Date(t1) #this prints out only the date part
t2
t3=strptime("11:45:54 21/10/2024 ","%H:%M:%S %d/%m/%Y")#this take the date and time in as a string to date and time
t3
t3$hour
?strftime
strftime(Sys.time(),"it is %I:%S %p on %A %d %B %Y.") #this convert the date and time to string
#time zone
Sys.timezone() #gives the default timer zone of the computer
Sys.getlocale("LC_TIME") #gives out local 
strftime(Sys.time(),tz="GMT") #give out time zone of different location and this function only works in posixct form
w=strftime(Sys.time(),tz="UTC + 5")
w1=strftime(Sys.time(),tz="UTC - 5")
w2=strftime(t1,tz="GMT")
w
w1
w2
ti=Sys.time()
ti1=as.POSIXlt(ti)
ti2=as.Date(ti1)
ti
ti1
ti2
ti+25 #this increase the time from seconds
ti1+3 #same as above
ti2+5 #this increases from date
d1=as.Date("21/11/2020","%d/%m/%Y")
d2=as.Date("10/12/2023","%d/%m/%Y")
d2-d1
difftime(d2,d1)#prints the difference of the 2 dates
difftime(d2,d1,units="sec") #this give out the diff in the sec 