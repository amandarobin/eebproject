# Modeling Exercises
                        #(a.)
# Set initial condutions and parameter values
NN <- matrix(NA,nrow=1,ncol=ttMax+1) 
N0 <- 100
rr <- 1.05
NN[1] <- N0
ttMax <- 25
K <- 2000

#perform calculations

for(tt in 1:ttMax){
  NN[tt+1] <- NN[tt]*exp(rr*(1-NN[tt]/K))
}

# plot N vector against time
plot(1:(ttMax+1), NN, xlab="time", ylab="N",col='blue',type="l")

#create function 

Ricker.mod <- function(N0,rr,ttMax,K){
  NN <- matrix(NA,nrow=1,ncol=ttMax+1) 
  NN[1] <- N0
  for(tt in 1:ttMax){
    NN[tt+1] <- NN[tt]*exp(rr*(1-NN[tt]/K))
  }
  plot(1:(ttMax+1), NN, xlab="time", ylab="N",col='blue',type="l")
  return(NN)
  
}

Ricker.mod(100,1.05,20,1000)

                        #(b.)
Ricker.mod(20,6.1,20,300) # population declines to n = 0 prior to 5 years time
Ricker.mod(20,1.05,20,300) # population approaches stable equilibruim, w/o oscillations
Ricker.mod(20,1.8,20,300) # decaying oscillations around n* =K 
Ricker.mod(20,2.2,20,300) # persistent, regular ocillations
Ricker.mod(20,3.6,20,600) # chaos 
# The growth rate appears to be the key driver of these patterns. 

                         #(c.)
#define parameter values
NN <- matrix(NA,nrow=1,ncol=ttMax+1) 
N0 <- 20
rr <- rrOfinterest
NN[1] <- N0
ttMax <- 20
K <- 1000
rrOfinterest <- c(6.1,1.05,1.8,2.2,3.6,5.2) #vector of values of interest

#Initialize plot window to have right number of rows and columns
par(mfrow=c(3,2))

for(i in 1:length(rrOfinterest)){ # create a four loop that calls ricker function and uses the vector of interest as the rr argument
  Ricker.mod(20,rrOfinterest[i],20,300)
}
                      #(d.)
nVec <- Ricker.mod(20,1.05,20,1000)
# suppose output time series is nVec
nVec
nVec[nVec>=K/2] 

min(which(nVec>=K/2)) # this returns the first time when the n is greater than K/2

                      #(e.)
rrSet <- c(.1,.2,.3,.4,.5,.6,.7,.8,.9)
rrSet
timevector <- matrix(NA,ncol = length(rrSet),nrow=1)
for(i in 1:length(rrSet)){
  Evec <- Ricker.mod(20,rrSet[i],50,1000)
  timevector[i] <- min(which(Evec>=K/2)) 
}
par(mfrow=c(1,1))
plot(rrSet,timevector)

                    #(f.)
       # Pseudocode for sensitivity analysis
# Define parameter values 
  # create vector of growth rate value of interest (r.values)
  # create vector of carrying capacities of interest (k.values)
  # set max number of years (ttmax)
# Initialize a matrix to collect all outputs
  # initialize empty matrix for output: 4 by 4 (NN)
# Use for loop to repeatedly run the model and collect output 
  # needs to be nested so that for every value of K of interest
  # we test it against every value of r of interest 
  # need to save each of those values in a vector (output)
  # then store every output value from ttmax in the initlized vector (NN)
# Plot NN in appealing way, such as contour plot

                  #(g)
NN= matrix(NA, 4,4)
r.values <- c(.5,1,1.5,2)
k.values <- c(1000,1500,2000,2500)
ttMax <- 10

for(i in 1:length(k.values)){ 
  for(j in 1:length(r.values)){
    output <- Ricker.mod(20,r.values[j],10,k.values[i])
    NN[i,j] <- output[ttMax]
  }
 
}
NN
#visually appealing plots:
image(NN)
contour(NN)
