setwd("/Users/anna/OneDrive/Coursera/JHU - Data Science/4. Exploratory Data Analysis/Week 01/Project 1/")
source("LoadPackagesData.R")

if (file.exists("plot1.png"))
    file.remove("plot1.png")

# diplay hist on screen first, than copy it to png file 
hist(data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (killowatts)")

dev.copy(png, file = "plot1.png")
dev.off()