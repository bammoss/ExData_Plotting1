h_p<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
h_p$DateTime<-paste(h_p$Date,h_p$Time, sep=' ')
h_p$DateTime<- strptime(h_p$DateTime, format="%d/%m/%Y %H:%M:%S", tz="")
h_p$Date<-as.Date(h_p$Date,format = "%d/%m/%Y")
h_p<-h_p[(h_p$Date<="2007-02-02")&(h_p$Date>="2007-02-01"),]
png('plot2.png')
plot(h_p$DateTime,h_p$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()