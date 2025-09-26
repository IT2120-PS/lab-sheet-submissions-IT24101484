setwd("C:\\Users\\IT24101484\\Desktop\\Lab 08")

# Importing the dataset
data<-read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

# Question 01
# population mean of the laptop bag weights
popmean<-mean(Weight.kg.)
print(popmean)

# population variance of the laptop bag weights
popvar<-var(Weight.kg.)
print(popvar)

# population standard deviation of the laptop bag weights
popsd<-sqrt(popvar)
print(popsd)

# Question 02
samples<-c()
n<-c()

for (i in 1:25) {
  s<-sample(Weight.kg., 6, replace = TRUE)
  samples<-cbind(samples, s)
  n<-c(n, paste('S', i))
}

colnames(samples)=n
s.means<-apply(samples, 2, mean)
s.vars<-apply(samples, 2, var)

# calculating the sample mean.
samplemean<-mean(s.means)
print(samplemean)

# calculating the sample variance.
samplevars<-var(s.means)
print(samplevars)

# calculating sample standard deviation.
samplesd<-sqrt(samplevars)
print(samplesd)

# Question 03
# Comparing the population mean and sample mean
popmean
samplemean

# Comparing the population sd and sample sd
truevar=popvar/6
truesd<-sqrt(truevar)
truesd
samplesd

