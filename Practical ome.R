
#Find rows that have NA
data("airquality")
na_rows = airquality[rowSums(is.na(airquality))>0,]


#Calculate means
mean_ozone = mean(airquality$ozone,na.rm=TRUE)
mean_temp  = mean(airquality$Temp,na.rm=TRUE)

#Calculate standard deviations
sd_ozone = sd(airquality$Ozone,na.rm=TRUE)
sd_temp  = sd(airquality$Temp,na.rm=TRUE)

#Find maximum values
max_ozone = max(airquality$ozone,na.rm=TRUE)
max_temp  = max(airquality$Temp,na.rm=TRUE)
