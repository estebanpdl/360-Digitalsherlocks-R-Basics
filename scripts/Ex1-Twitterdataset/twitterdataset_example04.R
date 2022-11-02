# Install
install.packages('tidyverse')

# Import
library(tidyverse)

# Creating a new column based on one condition
data$is.retweet = ifelse(str_starts(data$Tweet.text, 'RT @'), 1, 0)
