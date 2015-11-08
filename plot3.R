## let's check first if we have dataset in current working directory
if(!"load_data.R" %in% list.files()) { setwd("~/Desktop/Coursera")}
source("load_data.R")
## Create PNG file
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
## create a graph
plot(DateTime, Sub_metering_1, type = "l", col = "black",  xlab = "", ylab = "Energy Sub Metering" )
     lines(DateTime, Sub_metering_2 , col = "red")
     lines(DateTime, Sub_metering_3, col = "blue")
     legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1 )

## close the png device
dev.off()