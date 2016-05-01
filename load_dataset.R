## Exploratory Data Analysis
## -------------------------
## Assignment: Course Project 1
## @file: load_dataset.R
## @author: vinuales
##


##
## Main body
##

# download and unzip the dataset
localFilename <- "course_project_dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, localFilename)
unzip(localFilename)

# load original dataset
dataset <- read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")

# prepare time and date values
dataset$Time <- strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S")
dataset$Date <- as.Date(dataset$Date, "%d/%m/%Y")

# filter needed dates
filterDates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
cleanDataset <- subset(dataset, Date %in% filterDates)