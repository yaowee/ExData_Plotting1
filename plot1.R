#Source the load data file to read data from file
source("loadData.R")
powerdata <- loadData()

#data for plot
plotHeight <- 480
plotWidth <- 480
plotFileName <- "plot1.png"
plotUnit <- "px"

#data for margin in the plot
marginBottom <- 5
marginLeft <- 5
marginTop <- 2
marginRight <- 1

#Set the margins and rows
par( mfrow=c(1,1), mar=c(marginBottom,marginLeft,marginTop,marginRight))

#Create a new png graphics device to plot the histogram
png(filename = plotFileName, width = plotWidth, height = plotHeight, units = plotUnit)

#generate the histogram
hist(powerdata$Global_active_power,main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",ylab = "Frequency",col="red",
     ylim=c(0,1200))

dev.off()