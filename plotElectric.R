## Read only the records from Feb 1st and 2nd of 2007. The values are separated by a 
## semi-colon and NA values are represented as "?". Date is in format: dd/mm/yyyy

electricRaw <- read.table("./household_power_consumption.txt", sep=";", 
                          stringsAsFactors=FALSE, na.strings="?", skip=66637, nrows=2880)

## Grab the values from the 1st and 2nd of February
## electricRaw <- electricRaw[5:2884,]

## Rename the columns
names(electricRaw) = c("Date","Time", "Active", "Reactive", "Voltage", "Intensity", 
                       "Submeter1", "Submeter2", "Submeter3")

head(electricRaw)
tail(electricRaw)

str(electricRaw)

## Concatenate the date and time fields to form a date vector, then convert to Date/Time 
## POSIX class and insert this into a new "clean data" data frame with the POSIX date/time.
## Delete the time column from the "clean data" data frame after date/time string created.
electricDate <- paste(electricRaw$Date, electricRaw$Time, sep=" ") 
electricClean <- electricRaw[,-2]
electricClean$Date <- strptime(electricDate,"%d/%m/%Y %H:%M:%S")

## electricClean <- cbind(Date=paste(electricRaw$Date, electricRaw$Time, sep = " "), electricClean)
head(electricClean)
str(electricClean)
