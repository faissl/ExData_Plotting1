## Read only the records from Feb 1st and 2nd of 2007. The values are separated by a 
## semi-colon and NA values are represented as "?". Date is in format: dd/mm/yyyy. This 
## data will be read in from an external R script, plotElectric.R. The data frame object
## that contains the cleaned electric data is "electricClean".

source("./plotElectric.R")

pdf(file="./plot2.pdf", paper="letter", width=6.7, height=6.7)

par(mfrow=c(1,1), oma=c(2,2,2,2))

with(electricClean, plot(Date, Active, type="l", xlab="", ylab="Global Active Power (kilowatts)", oma=30 ))

dev.off()
