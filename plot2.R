## reading data
hpow <- read.csv("./household_power_consumption.txt", sep = ";", stringsAsFactors=FALSE)
## subsetting data
hpow1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 3]
d1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 1]   ## dates
d2 <- as.Date(d1, format='%d/%m/%Y')
t1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 2]   ## times
dt1 <- paste(d2, t1)   ## concatenate date and time
dt2 <- strptime(dt1, format = "%Y-%m-%d %H:%M:%S")    ## date and time in proper format (i.e. class)
## plotting
plot(dt2, hpow1, type = "l", ylab ="Global Active Power (kilowatts)", xlab = "")
dev.copy(png,'plot2.png')
dev.off()