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

download.file(paste0(course.url,"Intro2.R"),destfile="Intro2.R",mode="w")
download.file(paste0(course.url,"ChlorellaGrowth.csv"),destfile="ChlorellaGrowth.csv",mode="w")
X <- read.csv("ChlorellaGrowth.csv",comment.char='#')
X
Light <- X[,1]
rmax <- X[,2]

source("Intro2MOD.R")
plot(fit)

plot(rmax,light, xlim=c(x0,x120),ylim=c(y1,y4))

