#data for plot
plotHeight <- 480
plotWidth <- 480
plotFileName <- "plot2.png"
plotUnit <- "px"

#data for margin in the plot
marginBottom <- 5
marginLeft <- 5
marginTop <- 2
marginRight <- 1

dateFormat <- "%d/%m/%Y"
timeFormat <- "%H:%M:%S"

#Set the margins and rows
par( mfrow=c(1,1), mar=c(marginBottom,marginLeft,marginTop,marginRight))

#Source the load data file to read data from file
source("loadData.R")
powerdata <- loadData()

#Create a new png graphics device to plot the xyplot
png(filename = plotFileName, width = plotWidth, height = plotHeight, units = plotUnit)

#Conrstruct the plot
plot(powerdata$DateTime,powerdata$Global_active_power,type="l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")

dev.off()


