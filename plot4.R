png(filename="~/R/Plot4.png", height=480, width=480, bg="white")

household_power_consumption <- read.table("~/Downloads/household_power_consumption.txt", sep=";", quote="\"")

library(dplyr)
TEST <- filter(household_power_consumption, V1 == "1/2/2007" |  V1 =="2/2/2007")


par(mfrow = c(2,2))

#plot1
plot(TEST4$posix,TEST4$V3, type="l", col="black",xlab="",ylab="Global Active Power", lwd=1)
#plot2
plot(TEST4$posix,TEST4$V5, type="l", col="black",xlab="datetime",ylab="", lwd=1)

#plot3
names <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
colours <- c("Black","Red","Blue")

plot(TEST4$posix,TEST4$V7, type="l",xlab="", ylab="Energy sub metering")
lines(TEST4$posix,TEST4$V8, type="l", col='red')
lines(TEST4$posix,TEST4$V9, type="l", col='blue')
legend("topright", legend=names, cex=0.8, col=colours, lty=1,lwd=2, bty="n")

#plot 4
plot(TEST4$posix,TEST4$V4, type="l", col="black",xlab="datetime",ylab="Global_reactive_power", lwd=1)


