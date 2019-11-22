# Reading, naming and subsetting the data
power<-read.table("./Exploratory Data Analysis Course Project 1/household_power_consumption.txt",skip=1,sep=";")
names(power) <-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower<-subset(power,power$Date=="1/2/2007"|power$Date=="2/2/2007")

# Calling the basic plot function and annotating the graph
hist(as.numeric(as.character(subpower$Global_active_power)),col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency")

# Create PNG file

dev.copy(png,height=480,width=480,file="plot1.png")
dev.off()