com=list("this is string",34,3665,90,TRUE,FALSE)
print(com)
com[[2]]
#list inside operation
vec1=c(3,4,6,7)
vec2=c(9,5,4)
mix=list(vec=c(12,23,45),mat=array(c(vec1,vec1),dim=c(3,3)),l1=list(c(2,5,7,6)))
#accessing elements inside list
mix[[1]]
mix[[2]]
mix[[3]]
mix[[1]][[2]]
mix[[2]][[3]]
len=length(mix[[1]])+1
mix[[1]][[length(mix[[1]])]]=NA
mix[[1]][[length(mix[[1]])]]
mix[[1]][[len]]=23
mix[[1]]
