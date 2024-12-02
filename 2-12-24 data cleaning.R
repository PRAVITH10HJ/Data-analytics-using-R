s=read.table(file.choose(),header = TRUE,sep=',',stringsAsFactors = TRUE)
View(s)
str(s)
summary(s)
#for deleting na data
s1=na.omit(s)
View(s1)
str(s1)
summary(s1)
#for replacing the na values for integer values
s$Sales[is.na(s$Sales)]=mean(s$Sales,na.rm = TRUE)
s$Unit.Price[is.na(s$Unit.Price)]=mean(s$Unit.Price,na.rm = TRUE)
s$Profit[is.na(s$Profit)]=mean(s$Profit,na.rm = TRUE)
summary(s)
str(s)
#for replacing the na values for factors
#applying mode 
mode=function(x){
  x=na.omit(x)
  freq=table(x)
  modv=names(freq[freq==max(freq)])
  return(modv)
}
s$Order.Priority[is.na(s$Order.Priority)]=mode(s$Order.Priority)
s$Customer.Name[is.na(s$Customer.Name)]=mode(s$Customer.Name)
s$Ship.Mode[is.na(s$Ship.Mode)]=mode(s$Ship.Mode)
summary(s)
#deleting the column from table which has np effect on the data
s$company=NULL
View(s)
#finding outliers in the numeric column
boxplot(s$Order.Quantity,main="Quantity")
boxplot(s$Sales,main="Sales")
boxplot(s$Profit,main="Profit")
boxplot(s$Unit.Price,main="unit price")
boxplot(s$Shipping.Cost,main="Shipping cost")
#creating a bar plot for categorical values
#summary is written here coz to reduce the bar in plot and standardize the data
barplot(summary(s$Order.Priority),main="priority")
barplot(summary(s$Order.Date),main="date")
barplot(summary(s$Customer.Segment),main="customer segment")
barplot(summary(s$Ship.Mode),main="ship mode")
barplot(summary(s$Customer.Name),main="name")
#fixing the outliers for categorical values
s$Order.Priority[s$Order.Priority=="Loww"]="Low"
#dropping the bar from  the outliers in the bar plot
s$Order.Priority=droplevels(s$Order.Priority)
#packages for Winsorizing used to remove the outliers from the numeric cloumn
install.packages("DescTools")
library(DescTools)
#Winsorizing the data for only numeric
s$Order.Quantity=Winsorize(s$Order.Quantity)
s$Sales=Winsorize(s$Sales)
s$Profit=Winsorize(s$Profit)
s$Unit.Price=Winsorize(s$Unit.Price)
s$Shipping.Cost=Winsorize(s$Shipping.Cost)
#checking the removal of outliers
boxplot(s$Order.Quantity,main="Quantity")
boxplot(s$Sales,main="Sales")
boxplot(s$Profit,main="Profit")
boxplot(s$Unit.Price,main="unit price")
boxplot(s$Shipping.Cost,main="Shipping cost")
#z-score standardization(for scaling the data)
s$Order.Quantity
scale(s$Order.Quantity,center = TRUE,scale = TRUE)
z_score=function(x){
  x=(x-mean(x))/(sd(x))
  return(x)
}
z_score(s$Order.Quantity)
# min max normalization to keep the all values between 0 and 1
s$Order.Quantity=(s$Order.Quantity-min(s$Order.Quantity))/(max(s$Order.Quantity)-min(s$Order.Quantity))
s$Order.Quantity
min_max_nor=function(x){
  x=(x-min(x))/(max(x)-min(x))
  return(x) 
}
s$Order.Quantity=min_max_nor(s$Order.Quantity)
s$Sales=min_max_nor(s$Sales)
s$Profit=min_max_nor(s$Profit)
s$Unit.Price=min_max_nor(s$Unit.Price)
s$Shipping.Cost=min_max_nor(s$Shipping.Cost)
summary(s$Order.Quantity)
summary(s$Sales)
summary(s$Profit)
summary(s$Unit.Price)
summary(s$Shipping.Cost)
#examine the distribution of categorical values
table(s$Order.Priority)
table(s$Product.Category)
table(s$Order.Priority,s$Product.Category)