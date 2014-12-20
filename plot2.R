sourceFile <- "household_power_consumption.txt"
data <- read.table(sourceFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
smallSubsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(smallSubsetData)
dateTime <- strptime(paste(smallSubsetData$Date, smallSubsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(smallSubsetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power ( kW )")
dev.off()