setwd("/Users/anna/OneDrive/Coursera/JHU - Data Science/4. Exploratory Data Analysis/Week 01/Project 1/")
source("LoadPackagesData.R")

if (file.exists("plot3.png"))
      file.remove("plot3.png")

# In this case I have to open png device, than font will be scaled properly to fit
# legend box. If I will create plot on the screen first and than copy it to the png
# device than text will not fit into the legend box in the png file ( but will look
# just fine on the screen )

png(filename = "plot3.png")
plot(data$datetime, data$Sub_metering_1, col = "black", type = "l", xlab = "", 
     ylab = "Energy sub meterting")
lines(data$datetime, data$Sub_metering_2, col = "red", type = "l")
lines(data$datetime, data$Sub_metering_3, col = "blue", type = "l")
legend("topright", lty = 1, lwd = 2,  col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()