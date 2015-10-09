setwd("/Users/anna/OneDrive/Coursera/JHU - Data Science/4. Exploratory Data Analysis/Week 01/Project 1/")
source("LoadPackagesData.R")

if (file.exists("plot2.png"))
      file.remove("plot2.png")

# display plot on the screen first, than copy it to png file 
plot(data$datetime, data$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (killowatts)")

dev.copy(png, file = "plot2.png")
dev.off()
