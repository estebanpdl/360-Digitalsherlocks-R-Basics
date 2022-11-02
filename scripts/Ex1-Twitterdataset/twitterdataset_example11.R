# === Sort data by date ===

# ?order()
approach1 <- data[order(data$Date.posted.fixed, decreasing = FALSE),]

# ?arrange()
approach2 <- arrange(data, Date.posted.fixed)
approach3 <- arrange(data, desc(Date.posted.fixed))

# using pipes
data %>%
  arrange(Date.posted.fixed) -> approach4
