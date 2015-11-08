## This code is to load file household power consumption dataset.
## first set working directory
setwd("C:/Users/rajkum2/Desktop/Courseera")
newFile <-  "./exdata_data_household_power_consumption/household_power_consumption.txt"
## read this data from the file
householdData <- read.table(newFile, header= TRUE, sep = ";", colClasses = c("character", "character", rep("numeric", 7)), na ="?")
## Retrieve the dimension of this dataset
dim(householdData)
## Since we need data for only two 2 days so let's create the searchpath by attaching the householdData to the R Searchpath
attach(householdData)
## Create subset of householdData for two days from 1/2/2007 to 2/2/2007.
dateSubset <- Date == "1/2/2007" | Date == "2/2/2007"
newHouseholdData <- householdData[dateSubset, ]
attach(newHouseholdData)
## Now let's concatenate Date and Time column
x <- paste(Date, Time)
## Convert Date and Time variable to DateTime class
newHouseholdData$DateTime <- strptime(x, "%d/%m/%Y %H :%M : %S")
## Retrieve the rownames of newHouseholdData 
rownames(newHouseholdData) <- 1:nrow(newHouseholdData)
## retrieve the dimension of new data set
dim(newHouseholdData)
## create new search path in R
attach(newHouseholdData)