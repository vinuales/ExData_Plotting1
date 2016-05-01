## Exploratory Data Analysis
## -------------------------
## Assignment: Course Project 1
## @file: plot1.R
## @author: vinuales
##


source("load_dataset.R")

##
## Main body
##

# Define PNG 480x480
png("plot1.png", width = 480, height = 480)

# Generate plot
hist(cleanDataset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")

# Close 
dev.off()