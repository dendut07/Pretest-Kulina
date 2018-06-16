barisanPrima <- function(n){
  #Meminta Output dari user
  n <- readline(prompt="Masukkan bilangan bulat positif: ")
  while(!grepl("^[0-9]+$",n)) { n <- readline(prompt="Masukan tidak valid! Masukkan bilangan bulat positif: ") }

  #Memeriksa apakah bilangan tsb prima atau tidak
  is.prime <- function(p, i = 1){
    f <- p %% p[i] == 0 & p != p[i]
    if (any(f)){
      p <- is.prime(p[!f], i+1)
    }
    p
  }
  is.prime(2:n)
}
#run program
barisanPrima(n)
