# === Working with dates -> Test ===

# Get the first date
first_date = data$Date.posted[1]

# Get the last row
last_date = data$Date.posted[length(data$Date.posted)]

# Show variables
print (first_date)
print (last_date)

# Convert Twitter date to other format
date_format = '%a %b %d %H:%M:%S %z %Y'
as.Date(first_date, format=date_format)
as.POSIXct(first_date, format=date_format)

converted_first_date = as.POSIXct(first_date, format=date_format)

# show output
print (converted_first_date)
