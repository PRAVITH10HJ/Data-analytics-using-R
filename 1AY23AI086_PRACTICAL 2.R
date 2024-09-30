{
  revenue=c(3453,4534,5654,3453,5646,8678,6564,4353,6555,4564,4533,4633)
  expense=c(3452,5687,8795,4564,2315,5466,6485,4685,1255,7895,2245,7020)
  mon=seq(1:12)
  profit=revenue-expense
  good=c()
  bad=c()
  cat("the profit of each on month is profit",profit,"\n")
  atax=profit-(profit*(30/100))
  cat("profit after tax",atax,"\n")
  means=sum(profit)/length(profit)
  cat("the mean of the is",means,"\n")
  good=means<atax
  bad=means>atax
  total=data.frame("month"=mon,"Revenue"=revenue,"expense"=expense,"Profit"=profit,"Profit after tax"=atax,"Good month"=good,"Bad month"=bad)
  print(total)
  cat("the best month is",match(max(atax),atax),"with profit",max(atax),"\n")
  cat("the worst month is",match(min(atax),atax),"with profit",min(atax),"\n")
}
