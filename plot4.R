source(file.path("util_functions", "grab_data.R"))
source('plot2.R')
source('plot3.R')

plot4 <- function () {
    data <- grab_data()

    png("plot4.png", width = 480, height = 480, units = "px", bg = "white")

    par(mfrow=c(2,2))

    plot2Scratch(data)

    plot(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Voltage)), xlab = "datetime", ylab = "Voltage", type = "n")
    lines(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Voltage)))

    plot3Scratch(data)

    plot(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Global_reactive_power)), xlab = "datetime", ylab = "Global_reactive_power", type = "n")
    lines(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Global_reactive_power)))

    dev.off()
    print('Plot 4 created with name plot4.png')
}