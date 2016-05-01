## Exploratory Data Analysis
## -------------------------
## Assignment: Course Project 1
## @file: plot2.R
## @author: vinuales
##


source("load_dataset.R")

##
## Main body
##

# Define PNG 480x480
png("plot2.png", width = 480, height = 480)

# Generate plot
plot(cleanDataset$Time, cleanDataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Close 
dev.off()