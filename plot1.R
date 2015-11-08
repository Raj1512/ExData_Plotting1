## let's check first if we have dataset in current working directory
if(!"load_data.R" %in% list.files()) { setwd("~/Desktop/Coursera")}
source("load_data.R")
 ## Create PNG file
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
## create a graph
hist(Global_active_power, col = "red", main = "Global Active Power" ,  xlab = "Global Active Power (Kilowatts)" , breaks = 12, ylim = c( 0, 1200))
## close the png device
dev.off()
