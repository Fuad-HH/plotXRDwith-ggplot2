# import library
library(tidyverse)

# import Data
data <- read_csv("DataFiles/xrdData/1000 data.csv", skip = 1)

# select necessary columns
data <- data[, c(1, 2 , 3, 5)]

# rename columns
names(data) <- c("theta2", "Intensity_Asample", "theta2corundum", "Intensity_corundum")

# plot

data %>% ggplot(aes(theta2, Intensity_Asample)) + geom_line() + ggtitle("Dummy")
