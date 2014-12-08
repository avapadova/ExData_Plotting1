sourceFile <- "household_power_consumption.txt"
data <- read.table(sourceFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
smallSubsetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(smallSubsetData)
globalActivePower <- as.numeric(smallSubsetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kW)")
dev.off()