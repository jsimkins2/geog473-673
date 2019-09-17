deos_data <- read.csv("~/Downloads/DEOS.csv", header = TRUE, skip=0, stringsAsFactors = FALSE)
names(deos_data) = c("datetime", "air_temperature", "dewpoint", "windspeed", "winddirection", "pressure", "solar_radiation",
                     "wind_gust", "precipitation")

deos_data$datetime = as.POSIXct(deos_data$datetime, format = '%Y-%m-%d %H:%M')

# subsetting for the entire year 2015

# subsetting way 1 - the with() function
subDeos = deos_data[with(deos_data, deos_data$datetime >= "2015-01-01 00:00:00" & deos_data$datetime <= "2015-12-31 23:59:00"), ]

# subsetting way 2 - the subset() function 
subDeos = subset(deos_data, deos_data$datetime >= "2015-01-01 00:00:00" & deos_data$datetime <= "2015-12-31 23:59:00")

# subsetting way 3 - indexing via 
low_ind = which.min(deos_data$datetime < "2015-01-01 00:00:00")
upper_ind = which.max(deos_data$datetime > "2015-12-31 23:59")
wind_gust = deos_data$wind_gust[low_ind : upper_ind]
windspeed = deos_data$windspeed[low_ind : upper_ind]
datetime = deos_data$datetime[low_ind : upper_ind]
subDeos = data.frame(wind_gust, windspeed, datetime)

subDeos$wind_gust = subDeos$wind_gust * 2.2369362920544
subDeos$windspeed = subDeos$windspeed * 2.2369362920544

plot(subDeos$datetime, subDeos$wind_gust, col = 'blue', pch=18, cex=0.5, xlab = paste0(subDeos$datetime[1], " to ", subDeos$datetime[length(subDeos$datetime)]), ylab = "MPH", ylim = c(0,50))
lines(subDeos$datetime, subDeos$windspeed, col = 'red')
legend('topleft', legend=c('Wind Speed', 'Wind Gust'), col = c('red', 'blue'), lty = c(1, 1), cex=0.5)
title(paste0("correlation of Wind Speed & Wind Gust 2015 = ", cor(subDeos$wind_gust, subDeos$windspeed)), cex.main = 0.8)


