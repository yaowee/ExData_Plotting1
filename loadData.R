#Function that reads data from file
loadData <-function(){

    #URL to download the data set
    file.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    file.destname <- "exdata-data-household_power_consumption.zip"
    #If file does not exist in the current directory, download the file and unzip in the current directory
    file.name <- "household_power_consumption.txt"
    if(!file.exists(file.name)){
        download.file(url=file.url,destfile = file.destname)    
        unzip(file.destname,exdir=".")
    } else {
        print("File already exist")
    }
    
    #Read data from file.
    rawdata <- read.table(file.name,sep = ";",header = TRUE,stringsAsFactors = FALSE, na.strings = "?")
    
    #dates required to filter only the rows required
    start <- "1/2/2007"
    end <- "2/2/2007"
    
    
    data <- rawdata[rawdata$Date==start | rawdata$Date==end, ]
    #Add a column date time which combines the date and time column values for each row
    data$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), format = paste(dateFormat,timeFormat))
    rm("rawdata")
    return(data)
}