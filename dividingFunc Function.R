dividingFunc = function(n) {
  m = nchar(toString(n))
  if (m>1){
    vec1 = vector()
    for(i in 1:m) {
      vec1[i] <- n %% 10^i
    }
    vec2 = vector()
    vec2[1] <- vec1[1]
    for (i in 2:length(vec1)){
      vec2[i] <- vec1[i] - vec1[i-1]
    }
    return(matrix(rev(vec2),ncol=1))
  }
  else if (m==1) {
    return(n)
  }
}

dividingFunc(123456789)
