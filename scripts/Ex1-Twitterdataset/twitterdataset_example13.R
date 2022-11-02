# === Get difference in seconds between posts ===

# Difference in seconds
data$diff.secs <- c(0, difftime(
    data$Date.posted.fixed[-1],
    data$Date.posted.fixed[-nrow(data)],
    units = 'secs'
  )
)

# Explore average
mean(data$diff.secs)

# Plot data
hist(subset$secs)

# Fix gaps by filtering data
secs_dataset <- data %>%
  filter(diff.secs <= mean(data$diff.secs))

# Size
nrow(secs_dataset)

# Plot new dataset
hist(secs_dataset$diff.secs)
