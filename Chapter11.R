# Section 11 

course.url <- "http://kingaa.github.io/R_Tutorial/"
download.file(paste0(course.url,"Intro1.R"),destfile="Intro1.R",mode="w")


light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)

plot(light, rmax)
fit <- lm(rmax~light)
summary(fit)
abline(fit)

source("Intro1.R")


X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
# using '#' as a comment character allows us the CSV file to be self-documenting
    #Unmod
par(cex=1.5,cex.main=0.9)
plot(rmax~light, xlim=c(0,120),ylim=c(1,4), data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot 

title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~Light)
summary(fit); abline(fit) 
c1 <- round(fit$coef[1],digits=3) 	
c2 <- round(fit$coef[2],digits=3) 
text(50,3,paste("rmax=",c1,"+",c2,"light")) 

  #Mod version
LogLight=log(Light)
par(cex=1.5,cex.main=0.9)
plot(rmax~LogLight, xlim=c(0,120),ylim=c(1,4), data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot 

title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~LogLight)
summary(fit); abline(fit) 
c1 <- round(fit$coef[1],digits=3) 	
c2 <- round(fit$coef[2],digits=3) 
text(50,3,paste("rmax=",c1,"+",c2,"LogLight")) 

Logrmx=log(rmax)
LogLight=log(Light)
par(cex=1.5,cex.main=0.9)
plot(rmax~LogLight, xlim=c(0,120),ylim=c(1,4), data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")
fit <- lm(Logrmax~LogLight)
summary(fit); abline(fit) 
c1 <- round(fit$coef[1],digits=3) 	
c2 <- round(fit$coef[2],digits=3) 
text(50,3,paste("Logrmax=",c1,"+",c2,"LogLight")) 

par(mfrow=c(1,2))
par(cex=1.5,cex.main=0.9)
plot(rmax~light, xlim=c(0,120),ylim=c(1,4), data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~Light)
summary(fit); abline(fit) 
c1 <- round(fit$coef[1],digits=3) 	
c2 <- round(fit$coef[2],digits=3) 
text(50,3,paste("rmax=",c1,"+",c2,"light")) 
Logrmx=log(rmax)
LogLight=log(Light)
par(cex=1.5,cex.main=0.9)
plot(rmax~LogLight, xlim=c(0,120),ylim=c(1,4), data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")
fit <- lm(Logrmax~LogLight)
summary(fit); abline(fit) 
c1 <- round(fit$coef[1],digits=3) 	
c2 <- round(fit$coef[2],digits=3) 
text(50,3,paste("Logrmax=",c1,"+",c2,"LogLight")) 



x <- c(1:10)
y <- (5*x)+3 
y
par(mfrow=c(2,2))
plot(x,y,xlim =c(3,8))
lines(x,y)
plot(x,y,xlim =c(3,8))
lines(x,y, lty=5, col="red")
plot(x,y,xlim =c(3,8))
lines(x,y, lty=4, col="blue")
plot(x,y,xlim =c(3,8))
lines(x,y, lty=2, col="green")

dev.print(plot(x,y,xlim =c(3,8))
