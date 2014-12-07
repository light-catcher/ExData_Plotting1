##read the data and subset it
data<- read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data1<- subset(data, as.Date(DateTime)>= as.Date("2007-02-01") & as.Date(DateTime)<= as.Date("2007-02-02"))

##make plot1
plot1<- hist(data1$Global_active_power, col= "red", xlab="Global Active Power (kilowatts)" , ylab="Frequency", main="Global Active Power")

##save plot1
dev.copy(png,"plot1.png", height=800, width=800)
dev.off()
