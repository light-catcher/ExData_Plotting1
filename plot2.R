## the data has already been read and subset in plot1 process

## make plot2
plot2<- plot(data1$DateTime, data1$Global_active_power, type="n", xlab="", ylab="Global Active Power")
plot2<- lines(data1$DateTime, data1$Global_active_power)

## save plot2
dev.copy(png,"plot2.png", height=800, width=800)
dev.off()