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


dateFormat <- "%d/%m/%Y"