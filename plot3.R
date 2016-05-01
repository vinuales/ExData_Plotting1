## Exploratory Data Analysis
## -------------------------
## Assignment: Course Project 1
## @file: plot3.R
## @author: vinuales
##


source("load_dataset.R")

##
## Main body
##

# Define PNG 480x480
png("plot3.png", width = 480, height = 480)

# Generate plot
plot(cleanDataset$Time, cleanDataset$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(cleanDataset$Time, cleanDataset$Sub_metering_2, type="l", col="red")
lines(cleanDataset$Time, cleanDataset$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))

# Close 
dev.off()