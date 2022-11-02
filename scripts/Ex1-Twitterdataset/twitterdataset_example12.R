# === Extracting data from dates ===

# Get day
data$Date.posted.day <- format(
  as.Date(
    data$Date.posted.fixed
  ), format = "%d"
)

# Get month
data$Date.posted.month <- format(
  as.Date(
    data$Date.posted.fixed
  ), format = "%m"
)

# Get year
data$Date.posted.year <- format(
  as.Date(
    data$Date.posted.fixed
  ), format = "%Y"
)

# Get weekday
data$Date.posted.weekday <- weekdays(
  data$Date.posted.fixed
)

# Get time -> %H:%M:%S
data$Date.posted.hour <- format(
  as.POSIXct(
    data$Date.posted.fixed
  ), format = "%H:%M:%S"
)

