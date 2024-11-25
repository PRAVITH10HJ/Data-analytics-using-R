#prime numbers
sieve=function(n){
  isprime=rep(TRUE,n+1)
  isprime[1]=FALSE
  for(p in 2:sqrt(n)){
    if(isprime[p]){
      for(i in seq(p^2,n,by=p)){
        isprime[i]=FALSE
      }
    }
  }
  return(which(isprime))
}
n=100
prime_numbers=sieve(n)
prime_numbers
