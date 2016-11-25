library(tidyverse)
library(stringr)

tbls <- list.files("data-raw", pattern = "_GEOmetadb-", full.names = T)
obj_name <- c("gds-subset", "gds", "gpl", "gse", "gsm")
pattern <- paste0(obj_name, ".csv")

files <- map(pattern, ~str_subset(tbls, .x))

stopifnot(all(unlist(lapply(files, length) == 1))) # make sure each matches only 1 file

# assign objects
walk2(obj_name, files, ~ assign(.x, read_csv(.y), envir = .GlobalEnv))

use_data(`gds-subset`, gds, gpl, gse, gsm)
