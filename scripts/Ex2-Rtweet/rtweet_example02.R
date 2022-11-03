# === Extract domain name from URL ===

# Install and import urltools package
# install.packages('urltools')
library(urltools)

# Process dataset after exploring columns in dataset
urls_set <- na.omit(unlist(tweets$urls_expanded_url))

res <- tibble(urls = tweets$entities)
res %>% 
  unnest_wider(urls) -> test

res %>% 
  unnest_wider(urls) %>% 
  select(urls) %>%
  unnest_wider(urls) -> output

collected_urls <- na.omit(unlist(output$expanded_url))

# Get domains
domains_set <- suffix_extract(domain(collected_urls))

# Get columns
names(domains_set)


# write dataset in CSV
csv_file <- './data/domains_set_output.csv'
write.csv(domains_set, file = csv_file, fileEncoding = "UTF-8")
