## Read only the records from Feb 1st and 2nd of 2007. The values are separated by a 
## semi-colon and NA values are represented as "?". Date is in format: dd/mm/yyyy. This 
## data will be read in from an external R script, plotElectric.R. The data frame object
## that contains the cleaned electric data is "electricClean".

source("./plotElectric.R")

png(file="./plot3.png", width=480, height=480)

par(oma=c(0,0,2,0))

with(electricClean, plot(Date, Submeter1, type="l", xlab="", ylab="Energy sub metering", oma=30 ))

with(electricClean, points(Date, Submeter2, type="l", col="#FF0000"))

with(electricClean, points(Date, Submeter3, type="l", col="#0000FF"))

legend("topright", col=c("#000000", "#FF0000", "#0000FF"), lty=1, lwd=.5,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
