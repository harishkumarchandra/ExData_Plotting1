hpc <- read.table("hpc.txt", sep = ";", header = TRUE)
hpc$Date <- as.Date(hpc$Date, format = "%d/%m/%Y")
hpc <- subset(hpc, Date == "2007-02-01" | Date == "2007-02-02")
hpc$Global_active_power <- as.numeric(hpc$Global_active_power)
hpc$Global_active_power <- hpc$Global_active_power/1000
hist(hpc$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)" )
dev.copy(png, "plot1.png")
dev.off()