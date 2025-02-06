
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

data("cars")
Data_cars = data.frame(cars)

#The response variable
Response  = as.vector(Data_cars$dist)

#The design matrix
Design    = cbind(1,Data_cars$speed)

#Calculate beta

beta = solve(t(Design)%*%Design)%*%t(Design)%*%Response

beta


model = lm(dist~speed,Data_cars)
summary(model)