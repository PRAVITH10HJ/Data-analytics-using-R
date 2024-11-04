install.packages("xlsx")
library(xlsx)
install.packages("readxl")
library(readxl)
e=read_excel("C:\Users\pravi\Downloads\sales.xlsx")
r=read_xlsx("C:/Users/pravi/Downloads/sales.xlsx")
e=read_excel(file.choose())
e
r
#create excel file containing age,job,marital status,education and monthly expendeture of 10 people 
e1=read_excel(file.choose(),sheet = 1)
e1
e2=read_excel(file.choose(),sheet = 2)
e2
e3=read_excel(file.choose(),sheet = 1)
?read_excel
View(e1)
