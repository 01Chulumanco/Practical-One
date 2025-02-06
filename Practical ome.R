
#Find rows that have NA
data("airquality")
na_rows = airquality[rowSums(is.na(airquality))>0,]


#Calculate means
mean_ozone = mean(airquality$ozone,na.rm=TRUE)
mean_temp  = mean(airquality$Temp,na.rm=TRUE)
