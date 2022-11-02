# === R functions ===

# function_name <- function(parameter) { do something, return (output) }
my_function <- function(number) {
  value <- number^2
  return (value)
}

# Apply function
val <- 3
out <- my_function(val)

# Show output
print (out)


# === Cleaning text in data ===

# Creating a function to clean text
clean_spaces_from_tweet <- function(tweet) {
  txt <- str_trim(tweet, side = 'both')
}

# Apply function
data$Tweet.text.clean <- clean_spaces_from_tweet(data$Tweet.text)

# Creating a new column
data$is.retweet.fixed = ifelse(str_starts(data$Tweet.text.clean, 'RT @'), 1, 0)
