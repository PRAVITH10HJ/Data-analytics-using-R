a=5
b=3
a/b
a%%b
a%/%b
cat(a/b,a%%b,a%/%b,file="rp.txt")
?cat
cat(" ",5<4 ,file="rp.txt",append=TRUE)
getwd()
{
  s=readline("enter the s1")
  s1=readline("enter the the s2")
}
cat(s1==s,file="rp.txt",append=TRUE)
z1=(s==s1)
#logical
# & - AND
# | - OR
# ! - NOT
(a>c & a>b)
(a>c | a>b)
!(a>c & a>b)
#placement
{
  cgpa=as.integer(readline("enter the cgpa"))
  certi=readline("enter the  ceritification done or not in yes or no:")
}
re=(cgpa>8 | certi=="yes")
re
re2=(cgpa>8 & certi=="yes")
re2
vec1=c(1,2L,6+8i,"rs",TRUE)
vec1[3]="jack"
vec1[6]=23
vec1
typeof(vec1)
?seq
