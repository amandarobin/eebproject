#Bootcamp Exercise 1: Control and Flow

#1.)

for(x in 1:9){
  if(x<9){
    cat("\n    ")
  }
  else{
    cat("\n *")
  }
}

#2.)

for(x in 1:10){
  if(x<10){
    cat("*&")
  }
  else{
    cat("*")
  }
}

#3.)

dogs <- 10
for(i in 1:5){
  dogs <- dogs+1
}
      # (1) 11, (2) 12, (3) 13, (4) 14 (5) 15
meatloaf <- 0
for(i in 5:9){
  meatloaf <- meatloaf-i+1
  cat(meatloaf)
}
              # (5) -4, (6) -9, (7) -15, (8) 22, (9) -30 
bubbles <- 12
for(i in -1:-4){
  bubbles <- i
}
              # (-1) 12, (-2) 12, (-3) 12, (-4) 12
#4.) 
###you can use the if statement with the modulus operator to conditionally perform operations
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], "Hooray, congressional elections!", sep = '\t', fill = T)
  }
}

for(ii in 1:length(years)){
  if(years[ii]%%4==0){
    cat(years[ii],"Hooray, BOTH congressional AND presidential elections!", sep = '\t')
  } else if (years[ii] %% 2 == 0){
    cat(years[ii], "Hooray, congressional elections!", sep = '\t')
  }
  }
 


#5)
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);

Now look at the error message the following lines of code produce. Can you think of a way to modify this loop so that the loop will compund the interest?

compounded <- rep(NA, 6) #this line needs to be run to initalize the variable "compounded" before the loop can start
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

HINT: variables must be initialized before you can perform operations on them
HINT 2: look at the rep() function and see if you can use that to initialize a variable that will help you.

#6)
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    #step 2 get calculate interest and add to accounts from step 1
    #you can actually use the line you have already written if you
    #modify amounts in bankAccounts directly in step 1
  }

modified.bank <- bankAccounts-house-food-fun+income
modified.bank
for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    modified.bank <- bankAccounts-house-food-fun+income
    compounded[i] <- interestRate*modified.bank[i] + modified.bank[i];
    #step 2 get calculate interest and add to accounts from step 1
    #you can actually use the line you have already written if you
    #modify amounts in bankAccounts directly in step 1
  }}


  compounded