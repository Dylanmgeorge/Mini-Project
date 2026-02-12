#Load Packages#

library(here)
library(tidyverse)

#Load dataset#

penguins_raw_dataset <- read.csv(here::here("data", "data_raw", "Penguins_Raw-Data.csv"))

#Transform data into processed data#

Adelie_dataset <- penguins_raw_dataset %>%
  filter(species == "Adelie")

#Write(save) to Processed data#

write.csv(Adelie_dataset, here("data", "data_processed", "Adelie_dataset.csv"))
