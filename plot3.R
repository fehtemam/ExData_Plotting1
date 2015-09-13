## reading data
hpow <- read.csv("./household_power_consumption.txt", sep = ";", stringsAsFactors=FALSE)
## subsetting data
hpow1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 3]
d1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 1]   ## dates
d2 <- as.Date(d1, format='%d/%m/%Y')
t1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 2]   ## times
dt1 <- paste(d2, t1)  ## concatenate date and time
dt2 <- strptime(dt1, format = "%Y-%m-%d %H:%M:%S")   ## date and time in proper format (i.e. class)
x1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 7]
sm1 <- as.numeric(x1, na.rm = TRUE)
x2 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 8]
sm2 <- as.numeric(x2, na.rm = TRUE)
sm3 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 9]
## plotting
plot(dt2, sm1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(dt2, sm2, col = "red")
lines(dt2, sm3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1, 1), col = c("black", "red", "blue"))
dev.copy(png,'plot3.png')
dev.off()


