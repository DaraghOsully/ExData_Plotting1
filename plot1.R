png(filename="~/R/Plot1.png", height=480, width=480, bg="white")

household_power_consumption <- read.table("~/Downloads/household_power_consumption.txt", sep=";", quote="\"")

library(dplyr)
TEST <- filter(household_power_consumption, V1 == "1/2/2007" |  V1 =="2/2/2007")

par(mfrow = c(1,1))
hist(as.numeric(TEST1$V3)/1000, col = "red", main = "Global Active Power", xlab="Global Active Power(kilowatts)")


