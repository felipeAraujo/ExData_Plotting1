source(file.path("util_functions", "grab_data.R"))

plot3Scratch <- function(data) {
    plot(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Sub_metering_3)), ylim = c(0, 40), xlab = "", ylab = "Energy sub metering", type = "n")

    lines(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Sub_metering_1)), col = "black")
    lines(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Sub_metering_2)), col = "red")
    lines(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Sub_metering_3)), col = "blue")

    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
}

plot3 <- function() {
    data <- grab_data()

    png("plot3.png", width = 480, height = 480, units = "px", bg = "white")

    plot3Scratch(data)

    dev.off()
    print('Plot 3 created with name plot3.png')
}
