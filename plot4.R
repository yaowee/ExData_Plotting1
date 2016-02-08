#data for plot
plotHeight <- 480
plotWidth <- 480
plot4FileName <- "plot4.png"
plotUnit <- "px"

#data for margin in the plot
marginBottom <- 5
marginLeft <- 5
marginTop <- 2
marginRight <- 1

#Source the load data file to read data from file
source("loadData.R")
powerdata <- loadData()

#Create a new png graphics device to plot the xyplot
png(filename = plot4FileName, width = plotWidth, height = plotHeight, units = plotUnit)

#Set the number of charts per column
par( mfcol=c(2,2))

#Construct top left plot
plot(powerdata$DateTime,powerdata$Global_active_power,type="l", xlab = "", 
     ylab = "Global Active Power")


#Start a bottom left plot without data points
with(powerdata,plot(powerdata$DateTime,powerdata$Sub_metering_1,type="n",xlab=""
                    ,ylab="Energy sub metering"))

#Add data points
points(powerdata$DateTime,powerdata$Sub_metering_1,col="black",type="l")
points(powerdata$DateTime,powerdata$Sub_metering_2,col="red",type="l")
points(powerdata$DateTime,powerdata$Sub_metering_3,col="blue",type="l")

#Add legend
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue") ,lty = 1,bty = "n")

#Construct top right plot
with(powerdata,plot(DateTime,Voltage,xlab="datetime",ylab="Voltage",type="l"))

#Construct bottom right plot
with(powerdata,plot(DateTime,Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l"))

dev.off()