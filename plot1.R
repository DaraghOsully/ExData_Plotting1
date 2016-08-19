household_power_consumption <- read.table("~/Downloads/household_power_consumption.txt", sep=";",head=TRUE, quote="", na.strings="?")

library(dplyr)
TEST <- filter(household_power_consumption, Date== "1/2/2007" |  Date=="2/2/2007")

#par(mfrow = c(1,1))
png(filename="plot1.png", height=480, width=480, bg="white")
hist(TEST$Global_active_power, col = "red", main = "Global Active Power", xlab="Global Active Power(kilowatt)")

dev.off()