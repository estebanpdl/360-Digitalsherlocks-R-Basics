# === Reading a CSV file ===

# Define path
file_path <- 'data/twitter-timelines/Bartek93794875Timeline.csv'

# Use read.csv function
data <- read.csv(file = file_path, encoding  = 'UTF-8')
