plot1 <- function() {
    
    # Read Data
    filename <- "household_power_consumption.txt"
    DF <- read.table(filename, header=TRUE, sep=";", colClasses = "character")
    
    # Set required date range
    beforeDate <- as.Date("2007/02/01", "%Y/%m/%d")
    afterDate <- as.Date("2007/02/02", "%Y/%m/%d")
    
    # retrieve required subset
    data <- subset(DF, as.Date(DF[,1], "%d/%m/%Y") >= beforeDate & as.Date(DF[,1], "%d/%m/%Y") <= afterDate)
    
    # Create histogram and save as png
    png(filename = "plot1.png", width = 480, height = 480 )
    hist(as.numeric(data[,3]), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
    
    # Close the PNG file device
    dev.off()
}
