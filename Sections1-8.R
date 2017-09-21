install.packages("ggplot2")
library(ggplot2)
install.packages("geiger")
library(geiger)
library(ape)
library(geiger)
getwd()
setwd("/Users/Amanda/Desktop/eebproject")
        #Section 4 Exercises
2^7/2^7-1 #1
(1-1/2^7)^-1 #2
1+.2 #3
1+.2+.2^2/2 #4
1+.2+.2^2/2+.2^3/6 #5
exp(.2) #6
        #Section 5 Exercies
??foo
apropos("sin")
??sin
        #Section 6 Exercies
Light <- c(20,20,20,20,21,24,44,60,90,94,101)
rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)
plot(rmax~Light)
fit <- lm(rmax~Light)
summary(fit)
abline(fit)
abline(fit)
residuals(fit)
fitted(fit)
effects(fit)
vcov(fit)
anova(fit)
