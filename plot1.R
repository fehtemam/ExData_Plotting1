## reading data
hpow <- read.csv("./household_power_consumption.txt", sep = ";", stringsAsFactors=FALSE)
## subsetting data
hpow1 <- hpow[hpow$Date == "1/2/2007"|hpow$Date == "2/2/2007" , 3]
## replace missing data (i.e. "?" values) if there is any with NA
for (i in 1:length(hpow1)) {
      if (hpow1[i] == "?") {hpow1[i] <- NA}
}
## Convert to numeric and drop NA rows
hpow2 <- as.numeric(hpow1, na.rm = TRUE)
## plotting
hist(hpow2, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col = "red")
dev.copy(png,'plot1.png')
dev.off()



