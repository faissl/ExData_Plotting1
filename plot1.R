## Read only the records from Feb 1st and 2nd of 2007. The values are separated by a 
## semi-colon and NA values are represented as "?". Date is in format: dd/mm/yyyy. This 
## data will be read in from an external R script, plotElectric.R. The data frame object
## that contains the cleaned electric data is "electricClean".

source("./plotElectric.R")

pdf(file="./plot1.pdf")

hist(electricClean$Active, col="#FF0000", main="Global Active Power",
     xlab = "Global Active Power (killowatts)", breaks=12, oma=30 )

dev.off()
