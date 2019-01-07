grab_data <- function() {
    temp <- tempfile()
    download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', temp)
    data <- read.csv2(unz(temp, 'household_power_consumption.txt'))
    unlink(temp)
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    data[data$Date >= '2007-02-01' & data$Date < '2007-02-03', ]
}