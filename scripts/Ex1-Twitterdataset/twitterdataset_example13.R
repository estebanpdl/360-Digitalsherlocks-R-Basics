# === Get difference in seconds between posts ===

# Difference in seconds
approach4$diff.secs <- c(0, difftime(
    approach4$Date.posted.fixed[-1],
    approach4$Date.posted.fixed[-nrow(approach4)],
    units = 'secs'
  )
)

# Explore average
mean(approach4$diff.secs)

# Plot data
hist(approach4$diff.secs)

# Fix gaps by filtering data
secs_dataset <- approach4 %>%
  filter(diff.secs <= mean(approach4$diff.secs))

# Size
nrow(secs_dataset)

# Plot new dataset
hist(secs_dataset$diff.secs)
