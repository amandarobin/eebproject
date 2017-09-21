              #Sections 9.1-9.3
#Section 9.1
x <- c(1,3,5,7,9,11)
y <- c(6.5,4.3,9.1,-8.5,0,3.6)

x <- x+1
xx <- sqrt(x)
x; xx

x%%x
x%/%x
# %% produces the remainders of divison when dividing the first vector iwht the second vecot
# %/% produces the quoteint of the first vector and the second vector 
  #Exercise 9.1.1.0.1
# when the lenght of the longer vector is not a multiple of the shorter vecotor r will recycle elments of the longer vector, 
# meaning it will start over at element one in the shorter vector and continue unitl the operation has been performed on every
# number in the longer vector.

x <- seq(5,13,4)
x
w <- seq(1,5,0.2)
w
y <- seq(3,1)
y
# when the to is less than the from the sequence runs backward 

z <- c(1,3,5,7,9,11); z[3]
v <- z[c(2,3,4,5)]
v
v <- z[seq(1,5,2)]
v
v <- z[c(1,2,5)]; v
z[1] <- 12

z[c(1,3,5)] <- c(22,33,44)

r <- z[c(2,1,3)]
r
z

z[9] <- 11
z[9]
z
# When you set a value of an element that doesnt exist it will extend the vector to then include
# the new element and replace everything in between with "NA"

x <- c(1:10)
x
y <- (x-1)/(x+1)
plot(y~x)
g <- lm(y~x)
abline(g)
g

a <- 1
b <- 3
c <- a < b
d <- (a > b)
c
d

a <- c(1,2,3,4)
b <- c(1,1,5,5)
(a<b) | (a>3)
(a<b) || (a>3)

lowLight <- Light[Light<50]
lowLightrmax <- rmax[Light<50]
lowLight
# you cannot replace lowlight with Light because Light already references a vector, so it would not properly subset the data

x <- runif(20)
y <- mean(x)
low <-x[x<y] 

