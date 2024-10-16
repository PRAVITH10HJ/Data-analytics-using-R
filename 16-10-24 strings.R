str="hello"
str
str1='howdy'
str1
str3="hello 'r' program"
str3
str4='hello "good" boy'
str4
length(str)
length(str)
install.packages("stringr")
library(stringr)
{
  n=as.character(readline("enter the name "))
  u=as.character(readline("enter the usn"))
  s=as.character(readline("enter the section "))
  cat("the name of student is ",n,"their usn is ",u,'they belong to section',s)
}
str_length(str)
?substr
str_length(str3)
substr(str3,4,15)
substr(str3,3,str_length(str3))
?nchar
nchar(str3)
toupper(str3)
tolower(str3)
?casefold
paste(str1,str3)
cat(str1,str3)
s1="thsi is the user"
s2="pravith"
s=s1+s2 #concatenation not possible using +
?gsub
gsub("thsi","this",s1)
s="my name is pravith. im r studying r programming"
gsub("r","",s,ignore.case = TRUE) #this case of ignore the cases will be ignored
strsplit(s,"a")
?format
#finding the occurrence of a str in a str
grep("m",s) #gives out only one as a vector
