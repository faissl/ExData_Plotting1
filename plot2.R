## Read only the records from Feb 1st and 2nd of 2007. The values are separated by a 
## semi-colon and NA values are represented as "?". Date is in format: dd/mm/yyyy. This 
## data will be read in from an external R script, plotElectric.R. The data frame object
## that contains the cleaned electric data is "electricClean".

source("./plotElectric.R")

png(file="./plot2.png", width=480, height=480)

par(mfrow=c(1,1), oma=c(0,0,2,0))

with(electricClean, plot(Date, Active, type="l", xlab="", ylab="Global Active Power (kilowatts)", oma=30 ))

dev.off()
