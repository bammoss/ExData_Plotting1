h_p<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
h_p$Date<-as.Date(h_p$Date,format = "%d/%m/%Y")
h_p<-h_p[(h_p$Date<="2007-02-02")&(h_p$Date>="2007-02-01"),]
png('plot1.png')
hist(h_p$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()