# Labsheet 07
# Exercise

# Part 01)
# Uniform Distribution with a=0 and b=40

#P(10<X<25) = P(X<=25) - P(X<=10)
punif(25,min = 0, max = 40, lower.tail = TRUE) - punif(10,min = 0, max = 40, lower.tail = TRUE)

# Part 02)
# Exponential Distribution with lambda=0.33

#P(X<=2)
pexp(2, rate = 0.33, lower.tail = TRUE)

# Part 03)
# i)
# Normal Distribution with mean=100 and standard deviation=15

#P(X>130)
pnorm(130, mean = 100, sd=15, lower.tail = FALSE)

1 - pnorm(130, mean = 100, sd=15, lower.tail = TRUE)

# ii)
# 95th percentile = P(X=b) = 95% = 0.95
qnorm(0.95, mean = 100, sd=15)
