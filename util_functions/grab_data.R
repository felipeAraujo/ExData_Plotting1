grab_data <- function() {
    fileName = 'data.zip'

    if (!file.exists(fileName))
    {
        download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', destfile = "data.zip")
    }

    data <- read.csv2(unz(fileName, 'household_power_consumption.txt'))
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    data <- data[data$Date >= '2007-02-01' & data$Date < '2007-02-03', ]
}