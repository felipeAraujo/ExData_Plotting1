source(file.path("util_functions", "grab_data.R"))

plot2Scratch <- function(data) {
    plot(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Global_active_power)), xlab = "", ylab = "Global Active Power (kilowatts)", type = "n")
    lines(x = as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S") , y = as.numeric(as.character(data$Global_active_power)))
}

plot2 <- function() {
    data <- grab_data()

    png("plot2.png", width = 480, height = 480, units = "px", bg = "white")

    plot2Scratch(data)

    dev.off()
    print('Plot 2 created with name plot2.png')
}
