# === Creating a function to change date format ===

processTwitterDate <- function(datestring, date_format) {
  date <- as.POSIXct(datestring, format=date_format)
}

# Apply function to Date.posted column
data$Date.posted.fixed <- processTwitterDate(
  datestring = data$Date.posted,
  date_format = date_format
)
