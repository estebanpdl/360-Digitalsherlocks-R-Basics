# === Group data using tidyverse's pipes ===
data %>%
  group_by(is.retweet.fixed) %>%
  summarize(counter = n()) %>%
	View()
