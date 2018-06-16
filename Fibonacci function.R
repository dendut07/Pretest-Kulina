Fibonacci=function(n){
  vec=vector()
  for(i in 1:n) {
    if (i == 1 |i == 2) {
      vec[i] = 1
    }
    else{
      vec[i]=vec[i-1]+vec[i-2]
    }
  }
  return(vec[n])
}
Fibonacci(m <- as.integer(readline(prompt = "Enter the n-th Fibonacci number you want to find :   ")))

