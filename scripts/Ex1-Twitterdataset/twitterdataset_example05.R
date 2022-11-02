# === Data cleaning -> Test ===

# Exploring a single Tweet text
data$Tweet.text[1]

# Using str_trim() function to clean text
str_trim(data$Tweet.text[1], side = 'both')
