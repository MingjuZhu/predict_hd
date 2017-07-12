heart_raw<-read.csv("data/raw_data/Heart.csv")
View(heart_raw) # open the data for a sanity check
library(tidyverse) # package for cleaning data, loads a bunch of packages
heart_clean <- select(heart_raw, -X) # remove column X
heart_clean<- drop_na(heart_clean) # remove rows with NAs
dim(heart_raw) # check dimensions of raw
dim(heart_clean) # compare with dimensions of raw
write.csv(heart_clean, "data/clean_data/heart.clean.csv")
