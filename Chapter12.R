      #Section 12 

phi <- 1
for (k in 1:100) {
  phi <- 1+1/phi
  print(c(k,phi))
}
a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
plot(T,N)

T <- 1
N <- numeric(length(T))
for (t in 1:length(T)) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
N
T <- 0
N <- numeric(length(T))
for (t in 1:length(T)) {
  n <- a*n/(1+b*n)
  N[t] <- n
}
N

phi <- 20
k <- 1
while (k <= 100) {
  phi <- 1+1/phi
  print(c(k,phi))
  k <- k+1
}

phi <- 20
conv <- FALSE
while (!conv) {
  phi.new <- 1+1/phi
  conv <- phi==phi.new
  phi <- phi.new
}
phi
#only one iteration was needed 
phi <- 3
for (k in seq_len(1000)) {
  phi.new <- 1+1/phi
  if (phi==phi.new) break
  phi <- phi.new
}
phi #1.618034

phi <- 3
while (TRUE) {
  phi.new <- 1+1/phi
  if (phi==phi.new) break
  phi <- phi.new
}
phi#Yes! this phi is 1.618034 therefore it worked identically to the for loop above 

phi <- 12
repeat {
  phi.new <- 1/(1+phi)
  if (phi==phi.new) break
  phi <- phi.new
}
