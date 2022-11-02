# === Creating a small bar chart ===
data %>%
  group_by(is.retweet.fixed) %>%
  summarize(counter = n()) %>%
  ggplot(aes(
    y=counter,
    x=is.retweet.fixed
  )) +
  geom_bar(stat = 'identity')
 