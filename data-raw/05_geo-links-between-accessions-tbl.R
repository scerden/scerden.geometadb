library(tidyverse)

load("data/gsm.rda")
geo_links <- gsm %>%
    transmute(geo_gpl = gpl, geo_gse = series_id) %>%
    unique() %>%
    separate_rows(geo_gse, sep = ',') %>%
    unique()

use_data(geo_links, overwrite = T)
