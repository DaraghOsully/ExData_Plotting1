household_power_consumption <- read.table("~/Downloads/household_power_consumption.txt", sep=";",head=TRUE, quote="", na.strings="?")

library(dplyr)
TEST <- filter(household_power_consumption, Date== "1/2/2007" |  Date=="2/2/2007")


TEST1 <- mutate(TEST, Date = as.Date(V1,"%d/%m/%Y"))
TEST1 <- within(TEST1, posix <- as.POSIXct(paste(Date, Time)))

png(filename="plot2.png", height=480, width=480, bg="white")
plot(TEST1$posix,TEST1$Global_active_power, type="l", col="black",xlab="",ylab="Global Active Power(kilowatts)", lwd=1)

dev.off()