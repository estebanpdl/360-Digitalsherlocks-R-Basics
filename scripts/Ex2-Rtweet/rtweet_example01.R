# === Getting data from Twitter ===

# Install and Import Rtweet library
# install.packages("rtweet")
library(rtweet)

# Get tweets by keyword/hashtag
tweets <- search_tweets("tentativa de golpe", n = 500, include_rts = FALSE)

# Get users -> Search for Twitter users. The Twitter API limits the results to at most 1,000 users.
# As string providing the search query. Try searching by interest, full name, company name, or location. Exact match searches are not supported.
usrs <- search_users("bolsonarista", n = 100)

# Get friends -> accounts followed by one specific account
following <- get_friends("Bartek93794875")

# Lookup data on those accounts
following_metadata = lookup_users(following$user_id)


# === Explore dataset ===
names(tweets)
dim(tweets)


# save dataset
csv_file <- './data/tweets_output.csv'
write.csv(tweets, file = csv_file, fileEncoding = "UTF-8")
