            # Data Analysis Exercise Assignment 2

#1.)
  #a.)
snpsDataFrame=read.table('hapmap.txt',header=TRUE)
head(snpsDataFrame)
compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}
chisqs <- apply(snps,1,compute_chisquare) #get chi square stat.

pvals=pchisq(chisqs,1,lower.tail=FALSE) #get p-value using chi square stat & save as pval

pvals

  #b.)
# What prop. of pvalues are below 0.05
signifthres.1<-0.05
sum(pvals<signifthres.1)/length(pvals) 
  #4.5 % of p-values are less than 0.05
# Prop. of pvalues below 0.01
signifthres.2<-0.01
sum(pvals<signifthres.2)/length(pvals) 
  # 1.02 % of pvalues are less than 0.01
# Prop. of pvalues less than .001
signifthres.3<-0.001
sum(pvals<signifthres.3)/length(pvals) 
  # 0.12 % of p-values are less than 0.001

  #c.)
num_pval <- length(pvals)
num_pval # we have 4014 pvals

  #d.)
vector.pval <- 1:4014
exp_pvals <- vector.pval/num_pval

  #e.)
??sort
sort_pvals <- sort(pvals, decreasing = FALSE)

  #f.)
log_sort_pvals <- -log10(sort_pvals) 
log_exp_pvals <- -log10(exp_pvals)

  #g.)
plot(log_sort_pvals,log_exp_pvals)
fit <- lm(log_sort_pvals~log_exp_pvals)
abline(fit, col="red", lwd=3, lty=2)

#2.)

  #a.)
phenoDataFrame=read.table('pheno.sim.2014-2.txt',header=TRUE)
head(phenoDataFrame)

zz <- phenoDataFrame$glucose_mmolperL
zz
  #b.)
quantile(zz)
# 25% of individuals have a phenotype less than 3.595392

  #c.)
# 75% of individuals have a phenotype less than 7.354975

  #d.)
plot(density(zz))
abline(v=4.768656) #vertical line at 25% quantile
abline(v=7.354975) #vertical line at 75% percentile 
