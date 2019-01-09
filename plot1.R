source(file.path("util_functions", "grab_data.R"))

plot1Scratch <- function(data) {
    hist(as.numeric(as.character(data$Global_active_power)), xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
}

plot1 <- function() {
    data <- grab_data()

    png("plot1.png", width = 480, height = 480, units = "px", bg = "white")

    plot1Scratch(data)

    dev.off()
    print('Plot 1 created with name plot1.png')
}
