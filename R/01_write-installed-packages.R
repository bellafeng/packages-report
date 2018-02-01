## deja vu from yesterday!

## create a data frame of your installed packages

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
library(here)
library(tidyverse)
set_here(path=".", verbose = TRUE)
#data <- read_csv(here("data", "installed-packages.csv"))
ipt <- installed.packages() %>%
  as_tibble()
write.csv(ipt, file = here("data", "installed-packages.csv"))

devtools::session_info()



