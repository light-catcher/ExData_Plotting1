## the data has already been read and subset in plot1 process

## adjust the margin 
par(mfrow=c(2,2),mar=c(4,4,1,1))

##make plot4
plot4<- plot(data1$DateTime, data1$Global_active_power, type="n", xlab="", ylab="Global Active Power")
plot4<- lines(data1$DateTime, data1$Global_active_power)

plot4<- plot(data1$DateTime, data1$Voltage, type="n", xlab="date", ylab="Voltage")
plot4<- lines(data1$DateTime, data1$Voltage)

plot4<- plot(data1$DateTime, data1$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
plot4<- lines(data1$DateTime, data1$Sub_metering_1)
plot4<- lines(data1$DateTime, data1$Sub_metering_2, col="red")
plot4<- lines(data1$DateTime, data1$Sub_metering_3, col="blue")
plot4<- legend("topright", lty=c(1,1,1),  col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")

plot4<- plot(data1$DateTime, data1$Global_reactive_power, xlab="datatime", ylab="Global_reactive_power", type="n")
plot4<- lines(data1$DateTime, data1$Global_reactive_power)

##save plot4
dev.copy(png, "plot4.png", height=800, width=800)
dev.off()