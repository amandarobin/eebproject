# Plotting Exercise 1

#1.) 
get_heights<- function(n=100){ #Here the defult argument for n is a sample of 100, but if type in a different number for the function argument it will sample that number 
  heights <-  rnorm(n, mean=69, sd = 10)
  return(heights)
}
get_heights()

#2.)
get_heights<- function(n=100){
  heights <-  rnorm(n, mean=69, sd = 10)
  mean(heights)
}
get_heights()

#3.)
get_heights<- function(n=100){
  heights <-  rnorm(n, mean=69, sd = 10)
  return(mean(heights))
}
get_heights()

#4.) 
mean_heights_100 <- rep(NA, 1000)
for (x in 1:1000){ 
  mean_heights_100[x] <- get_heights()
}
mean_heights_100

#5.) 
mean_heights_1000 <- rep(NA, 1000)
for (x in 1:1000){ 
  mean_heights_1000[x] <- get_heights(1000)
}
mean_heights_1000

#6.)

bins<-seq(50,90,by=1)
hist(mean_heights_100,breaks=bins)$breaks

hist(mean_heights_1000,breaks=bins)$breaks

counts_100<-hist(mean_heights_100,breaks=bins)$counts
counts_1000<-hist(mean_heights_1000,breaks=bins)$counts

bins.name <- bins[-40]
par(mfrow=c(1,1), mar=c(4, 4, 3, 2)) #sets plotting area and margins
barplot(rbind(counts_100,counts_1000),col= c("red","blue"),beside=TRUE,xlab="Heights",ylab="Frequency", names.arg = bins.name)
legend(80,500,c("Sample Size 100","Sample Size 1000"),col=c(2,4),lwd=4)




jpeg("myplot2.jpg")
par(mfrow=c(1,1), mar=c(4, 4, 3, 2)) #sets plotting area and margins
barplot(rbind(counts_100,counts_1000),col= c("red","blue"),beside=TRUE,xlab="Heights",ylab="Frequency", names.arg = bins.name)
legend(80,500,c("Sample Size 100","Sample Size 1000"),col=c(2,4),lwd=4)
dev.off()






