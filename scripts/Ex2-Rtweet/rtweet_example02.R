# === Extract domain name from URL ===

# Install and import urltools package
install.packages('urltools')
library(urltools)

# Process dataset after exploring columns in dataset
urls_set <- na.omit(unlist(tweets$urls_expanded_url))

# Get domains
domains_set <- suffix_extract(domain(urls_set))

# Get columns
names(domains_set)
