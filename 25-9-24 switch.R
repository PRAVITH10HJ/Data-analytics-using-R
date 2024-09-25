#calculator
{
  {
    num1=as.integer(readline("enter the first number:"))
    num2=as.integer(readline("enter the second number:"))
  }
  ch=readline("enter the operation:+,-,*,%,")
  result=switch(
    ch,
    "+"=paste("result",num1+num2),
    "-"=paste("result",num1-num2),
    "*"=paste("result",num1*num2),
    "/"=paste("result",num1/num2),
    "%%"=paste("result",num1%%num2),
)
print(result)
}
#number to day type 1
{
  day=as.integer(readline("enter the numer for the day"))
  switch(day,"sunday","tuesday","wednesday","thursday","friday","saturday")
}
#number to day type 2
{
  day=readline("ente the number for the day")
  switch(day,
        "1"="sunday",
        "2"="mon",
        "3"="tues",
        "4"="wed",
        "5"="thur",
        "6"="fri",
        "7"="sat",
        "invaild")
}
