#Load Packages

library(here)
library(tidyverse)

#Load dataset

Adelie_Penguin_processed_dataset <- read.csv(here::here("data", "data_processed", "Adelie_Penguin_processed_data.csv"))

#Transform processed data into two graphs:
##Graph 1 (Violin plot of the flipper length response variable and the Island explanatory variable):

###Generate Descriptive Statistics 1 (for the graph description)
Adelie_Penguin_Stats_Flipper_Length <- Adelie_Penguin_processed_dataset %>%
  group_by(Island) %>%
  summarise(
    Count = n() - naniar::n_miss(Flipper_Length_mm),
    Count_NA = naniar::n_miss(Flipper_Length_mm))

###Generate Graph 1
Adelie_Penguin_ViolinPlot_Flipper_Length <- Adelie_Penguin_processed_dataset %>% 
  ggplot() +
  geom_violin(aes(x = Island, y = Flipper_Length_mm, colour = Island)) +
  geom_boxplot(aes(x = Island, y = Flipper_Length_mm), width = 0.1) +
  geom_jitter(aes(x = Island, y = Flipper_Length_mm, colour = Island), size = 2, shape = 1, width = 0.1) +
  xlab("Island") +
  ylab("Flipper Length (mm)") +
  theme_bw()

###View Graph
Adelie_Penguin_ViolinPlot_Flipper_Length

###Write (save) Graph to Outputs

ggsave(
  here::here("outputs", "Adelie_Penguin_ViolinPlot_Flipper_Length.png"),
  plot = Adelie_Penguin_ViolinPlot_Flipper_Length,
  width = 6, 
  height = 4
)

##Graph 2 (Violin plot of the body mass response variable and the Island explanatory variable):

###Generate Descriptive Statistics 2 (for the graph description)
Adelie_Penguin_Stats_Body_mass <- Adelie_Penguin_processed_dataset %>%
  group_by(Island) %>%
  summarise(
    Count = n() - naniar::n_miss(Body_mass_g),
    Count_NA = naniar::n_miss(Body_mass_g))

###Generate Graph 1
Adelie_Penguin_ViolinPlot_Body_mass <- Adelie_Penguin_processed_dataset %>% 
  ggplot() +
  geom_violin(aes(x = Island, y = Body_mass_g, colour = Island)) +
  geom_boxplot(aes(x = Island, y = Body_mass_g), width = 0.1) +
  geom_jitter(aes(x = Island, y = Body_mass_g, colour = Island), size = 2, shape = 1, width = 0.1) +
  xlab("Island") +
  ylab("Body Mass (g)") +
  theme_bw()

###View Graph
Adelie_Penguin_ViolinPlot_Body_mass

###Write (save) Graph to Outputs

ggsave(
  here::here("outputs", "Adelie_Penguin_ViolinPlot_Body_mass.png"),
  plot = Adelie_Penguin_ViolinPlot_Body_mass,
  width = 6, 
  height = 4
)
