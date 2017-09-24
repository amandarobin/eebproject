      #Section 9.6
hur.url <- "http://kingaa.github.io/R_Tutorial/hurricanes.csv"
hur <- read.csv(hur.url,comment.char='#')
hur
print(hur)
str(hur)
# Class types of each variable:
#Year   = integer
#Name  = Factor                   
#MasFem     = mumber             
#MinPressure_before   = integer
#Minpressure_Updated.2014= integer
#Gender_MF    = integer           
#Category = integer              
#alldeaths = integer             
#NDAM   = integer                 
#Elapsed.Yrs = integer             
#Source = factor
#ZMasFem = number
#ZMinPressure_A = number
#ZNDAM = number
