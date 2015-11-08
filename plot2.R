## let's check first if we have dataset in current working directory
if(!"load_data.R" %in% list.files()) { setwd("~/Desktop/Coursera")}
source("load_data.R")
## Create PNG file
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
## create a graph
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## close the png device
dev.off()