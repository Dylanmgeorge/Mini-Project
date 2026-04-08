#Use the renv::restore() function to ensure the correct packages and package versions are installed

renv::restore()

#Load Packages

library(here)
library(dplyr)
library(readr)

#Load dataset

Adelie_Penguin_raw_dataset <- read.csv(here::here("data", "data_raw", "Adelie_Penguin_raw_data.csv")) 

#Transform data into processed data 
##Ensure that the processed dataset only includes variables of importance
##-Sex, Species, Region, Penguin ID, Island, Body mass and Flipper length

Adelie_Penguin_processed_data <- Adelie_Penguin_raw_dataset %>%
  dplyr::filter(Sex == "FEMALE")%>%
  dplyr::select(Species, Region, Individual.ID, Island, Flipper.Length..mm., Body.Mass..g., Sex)%>%
  dplyr::rename(Individual_ID = Individual.ID, Flipper_Length_mm = Flipper.Length..mm., Body_mass_g = Body.Mass..g.)

#Write(save) to Processed data

write.csv(Adelie_Penguin_processed_data, here::here("data", "data_processed", "Adelie_Penguin_Processed_data.csv"))

