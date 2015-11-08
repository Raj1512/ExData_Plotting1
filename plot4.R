## let's check first if we have dataset in current working directory
if(!"load_data.R" %in% list.files()) { setwd("~/Desktop/Coursera")}
source("load_data.R")
## Create PNG file
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
 ## Create 2 by 2 graph  to display 2 plots per row, column (plots are filled row-wise)

par(mfrow = c(2,2))

 ##  1 Top Left Graph
 plot(DateTime, Global_active_power, type = "l", xlab ="", ylab = "Glabal Active Power")
 
 ## 2 Top Right Graph
 
 plot(DateTime, Voltage, type = "l", xlab ="datetime", ylab = "voltage")
 
 ## 3 Bottom Left Graph
 
  plot(DateTime, Sub_metering_1, type = "l", col = "black",  xlab = "", ylab = "Energy Sub Metering" )
 lines(DateTime, Sub_metering_2 , col = "red")
 lines(DateTime, Sub_metering_3, col = "blue")
 legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1 )

## 4 Bottom Right Graph 
 plot(DateTime, Global_reactive_power, type = "l", col = "black",  xlab = "datetime", ylab = colnames(newHouseholdData)[4] )
 
## close the png device
dev.off()
