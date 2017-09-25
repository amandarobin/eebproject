# Chapter 11
course.url <- "http://kingaa.github.io/R_Tutorial/"
download.file(paste0(course.url,"Intro1.R"),destfile="Intro1.R",mode="w")

light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)

plot(light, rmax)
fit <- lm(rmax~light)
summary(fit)
abline(fit)

source("Intro1.R")

download.file(paste0(course.url,"Intro2.R"),destfile="Intro2.R",mode="w")
download.file(paste0(course.url,"ChlorellaGrowth.csv"),destfile="ChlorellaGrowth.csv",mode="w")

X <- read.csv("ChlorellaGrowth.csv",comment.char='#')

Light <- X[,1]
rmax <- X[,2]

source("MODlinregIntro2.R") #updated modification using log of light

modplot # this is the call of the modified graph of log of light intensity 

plot(fit)
??plot.lm # describes how plot.lm will create a series of exploratory plots for the linear model regardless of the model's suitablity for the data

#growth rate vs. light intensity with x axis from 0 to 120, y axis from 1 to 4
par(cex=1.5,cex.main=0.9)
plot(rmax~light, xlim=c(0,120),ylim=c(1,4), data=X,xlab="light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")

# side by side graphs:
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


# Last Exercise 
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
