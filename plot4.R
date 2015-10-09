setwd("/Users/anna/OneDrive/Coursera/JHU - Data Science/4. Exploratory Data Analysis/Week 01/Project 1/")
source("LoadPackagesData.R")

if (file.exists("plot4.png"))
      file.remove("plot4.png")

# In this case I have to open png device, than font will be scaled properly to fit
# legend box. If I will create plot on the screen first and than copy it to the png
# device than text will not fit into the legend box in the png file ( but will look
# just fine on the screen )

png(filename = "plot4.png")

par(mfrow = c(2, 2))

with(data, {
     plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
     plot(datetime, Voltage, type = "l")
     plot(datetime, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
     lines(datetime, Sub_metering_2, type = "l", col = "red")
     lines(datetime, Sub_metering_3, type = "l", col = "blue")
     legend("topright", lty = 1, lwd = 2,  col = c("black", "red", "blue"), 
            legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
     plot(datetime, Global_reactive_power, type = "l")
})

dev.off()