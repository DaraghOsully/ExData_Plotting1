png(filename="~/R/Plot2.png", height=480, width=480, bg="white")

household_power_consumption <- read.table("~/Downloads/household_power_consumption.txt", sep=";", quote="\"")

library(dplyr)
TEST <- filter(household_power_consumption, V1 == "1/2/2007" |  V1 =="2/2/2007")

par(mfrow = c(1,1))
TEST4 <- mutate(TEST, V1 = as.Date(V1,"%d/%m/%Y"))
TEST4 <- within(TEST4, posix <- as.POSIXct(paste(V1, V2)))

plot(TEST4$posix,TEST4$V3, type="l", col="black",xlab="",ylab="Global Active Power(kilowatts)", lwd=1)
