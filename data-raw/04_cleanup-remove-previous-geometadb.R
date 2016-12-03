library(tidyverse)


# Remove sqlite src -------------------------------------------------------
system(paste0('rm -rf ', file.path("data-raw", "tmp")))


# remove last timestamp csv tbls ------------------------------------------
previous_time <- "2016-11-13"
list.files("data-raw", pattern = previous_time, full.names = T) %>%
    file.remove()


