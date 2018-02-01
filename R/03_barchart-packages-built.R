## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame, then ...
apt_freqtable <- read.csv(here("data", "add-on-packages-freqtable.csv")) %>% as_tibble()
## if you use ggplot2, code like this will work:
ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")
devtools::session_info()

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help

## YES overwrite the file that is there now
## that came from me (Jenny)

## when this script works, stage & commit it and the png file
## PUSH!
