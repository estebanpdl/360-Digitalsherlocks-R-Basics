# === Getting data from Twitter ===

# Install and Import Rtweet library
install.packages("rtweet")
library(rtweet)

# Get tweets by keyword/hashtag
tweets <- search_tweets("#Sandinista", n = 10000, include_rts = FALSE)

# Get users -> It takes more tweets basically. It seems keywords and hashtags with
# special characters are not supported.
usrs <- search_users("#Sandinista", n = 1000)

# Get friends -> accounts followed by one specific account
following <- get_friends("Bartek93794875")

# Lookup data on those accounts
following_metadata = lookup_users(following$user_id)


# === Explore dataset ===
names(tweets)
dim(tweets)
