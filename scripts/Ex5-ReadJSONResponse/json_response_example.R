# install packages
# install.packages("rjson")
library(rjson)
library(tidyverse)
library(tibble)

# read response
result <- fromJSON(file = "data/json-response/response-twitter-users.json")
res <- tibble(place = result)

res %>% 
  unnest_wider(place)


res %>% 
  unnest_wider(place) %>% 
  select(id, screen_name, url) -> output
