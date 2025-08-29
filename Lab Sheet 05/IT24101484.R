setwd("C:\\Users\\IT24101484\\Desktop\\Lab05")

# 1)

Delivery_Times<-read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
fix(Delivery_Times)
attach(Delivery_Times)

# 2)
hist(Delivery_Times$Delivery_Time_.minutes.,main = "Histogram for Delivery Times", 
     breaks = seq(20, 70, length = 10),right = TRUE)

# 4)
hist_data <- hist(Delivery_Times$Delivery_Time_.minutes.,
                  breaks = seq(20, 70, length = 10),
                  right = FALSE, plot = FALSE)
frequencies <- hist_data$counts
cum_freq <- cumsum(frequencies)
print(frequencies)
print(cum_freq)


midpoints <- hist_data$mids
plot(midpoints, cum_freq, type = "b",
     main = "Cumulative Frequency polygon for Delivery Time",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     pch = 16)
