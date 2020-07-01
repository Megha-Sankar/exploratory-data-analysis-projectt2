 #Q2: Have total emissions from PM2.5 decreased in the Baltimore 
## City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting 
## system to make a plot answering this question.

Data_Sub <- subset(NEI, fips == "24510")
Balt_Cnty <- tapply(DataSub$Emissions, DataSub$year, sum)

png("Plot2.png",width=500,height=480)
## To plot the graph
plot(Balt_Cnty, type = "o", main = "Total PM2.5 Emissions in Baltimore County", 
     xlab = "Year", ylab = "PM2.5 Emissions", pch = 18, col = "darkblue", 
     lty = 5)

dev.off()
