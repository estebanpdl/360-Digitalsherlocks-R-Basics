# Install and Import Rvest library
# install.packages("rvest")
library(rvest)

# Read URL
onpress <- read_html("https://onpress.pl/")

# Collect articles -> Inpect elements on website
articles <- onpress %>% html_elements("article") %>%
  html_element("a")

# Collect links
attrs <- html_attr(articles, name = "href")

# Create a DataFrame
df_attrs <- data.frame(attrs)
df_attrs$domain <- domain(df_attrs$attrs)

# Save attrs
write.csv(df_attrs, "data/onpress_links.csv", fileEncoding = "UTF-8")
