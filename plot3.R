## the data has already been read and subset in plot1 process

##make plot3
plot3<- plot(data1$DateTime, data1$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
plot3<- lines(data1$DateTime, data1$Sub_metering_1)
plot3<- lines(data1$DateTime, data1$Sub_metering_2, col="red")
plot3<- lines(data1$DateTime, data1$Sub_metering_3, col="blue")
plot3<- legend("topright", lty=c(1,1,1),  col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

##save plot3
dev.copy(png, "plot3.png", height=800, width=800)
dev.off()