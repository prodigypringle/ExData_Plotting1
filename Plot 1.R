setwd("~/Box Sync/WD/Data") 
#my working directory
dt=read.csv("HP.txt", header = TRUE, sep = ";") 
#renamed file to HP to ease typing
str(dt) 
#to get a summary
dt$Datetime = paste(as.character(dt[,1], dt[,2])) 
#merging date and time
dt[,1]=as.Date(dt$Date,'%d/%m/%Y') 
#converting string column to date
dt = subset(dt, Date == '2007-02-01' | Date == '2007-02-02') 
#selecting only required few days
dt[,3] = as.numeric(as.character(dt[,3])) 
# convert the Global Active Power's datatype from text

#plot 1
png('plot1.png',width=480,height=480)
hist(dt[,3],col='red',xlab='Global Active Power (kilowatts)', ylab='Frequency',main='Global Active Power')
dev.off()