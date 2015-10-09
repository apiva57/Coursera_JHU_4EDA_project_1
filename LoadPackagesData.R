# this function will load a package if needed
pkgTest <- function(x)
{
      if (!require(x,character.only = TRUE))
      {
            install.packages(x,dep=TRUE)
            if(!require(x,character.only = TRUE)) stop("Package not found")
      }
}

# read data
pkgTest("data.table")
library(data.table)
rawData <- fread("data/household_power_consumption.txt", sep = ";", header = TRUE, 
           na.strings = '?', 
           colClasses = c("character", "character", "numeric", "numeric", "numeric", 
                        "numeric", "numeric", "numeric", "numeric"), data.table = FALSE)

# use dplyr package to get data only for  2007-02-01 and 2007-02-02 and transform
# columns Date and Time to DateTime. Use strptime to convert char string to the 
# POSIXlt format
pkgTest("dplyr")
library(dplyr)

data <- rawData  %>% filter(Date == '1/2/2007' | Date == '2/2/2007') %>%
      mutate( datetime = paste(Date, Time), Date = NULL, Time = NULL)
data$datetime <- strptime(data$datetime, format = "%d/%m/%Y %H:%M:%S")




