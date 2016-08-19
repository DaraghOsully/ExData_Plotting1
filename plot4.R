household_power_consumption <- read.table("~/Downloads/household_power_consumption.txt", sep=";",head=TRUE, quote="", na.strings="?")

library(dplyr)
TEST <- filter(household_power_consumption, Date== "1/2/2007" |  Date=="2/2/2007")


TEST1 <- mutate(TEST, Date = as.Date(V1,"%d/%m/%Y"))
TEST1 <- within(TEST1, posix <- as.POSIXct(paste(Date, Time)))

names <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
colours <- c("Black","Red","Blue")

png(filename="plot4.png", height=480, width=480, bg="white")
par(mfrow = c(2,2))

#plot1
plot(TEST1$posix,TEST1$Global_active_power, type="l", col="black",xlab="",ylab="Global Active Power", lwd=1)

#plot2
plot(TEST1$posix,TEST1$Voltage, type="l", col="black",xlab="datetime",ylab="Voltage", lwd=1)


#plot3

plot(TEST1$posix,TEST1$Sub_metering_1, type="l",xlab="", ylab="Energy sub metering")
lines(TEST1$posix,TEST1$Sub_metering_2, type="l", col='red')
lines(TEST1$posix,TEST1$Sub_metering_3, type="l", col='blue')
legend("topright", legend=names, cex=0.8, col=colours, lty=1,lwd=2, bty="n")



#plot 4
plot(TEST1$posix,TEST1$Global_reactive_power, type="l", col="black",xlab="datetime",ylab="Global_reactive_power", lwd=1)

dev.off()

