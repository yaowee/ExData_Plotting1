#data for plot
plotHeight <- 480
plotWidth <- 480
plot3FileName <- "plot3.png"
plotUnit <- "px"

#data for margin in the plot
marginBottom <- 5
marginLeft <- 5
marginTop <- 2
marginRight <- 1

#Set the margins and rows
par( mfrow=c(1,1), mar=c(marginBottom,marginLeft,marginTop,marginRight))

#Source the load data file to read data from file
source("loadData.R")
powerdata <- loadData()

#Create a new png graphics device to plot the xyplot
png(filename = plot3FileName, width = plotWidth, height = plotHeight, units = plotUnit)

#Start a plot without data points
with(powerdata,plot(powerdata$DateTime,powerdata$Sub_metering_1,type="n",xlab=""
                    ,ylab="Energy sub metering"))

#Add data points
points(powerdata$DateTime,powerdata$Sub_metering_1,col="black",type="l")
points(powerdata$DateTime,powerdata$Sub_metering_2,col="red",type="l")
points(powerdata$DateTime,powerdata$Sub_metering_3,col="blue",type="l")

#Add legend
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue") ,lty = 1)

dev.off()