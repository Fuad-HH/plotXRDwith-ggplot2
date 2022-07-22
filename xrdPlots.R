# In this script 2 csv files produced by the XRD machine in AEC, TSC

# Save the csv files in proper locations


# load libraries
library(tidyverse)

# load data file
peaks <- read_csv("DataFiles/xrdData/800 data.csv", skip = 1)
peaks <- peaks[, c(1, 2, 4, 18)]
# rename column names
names(peaks) <- c("theta2", "Intensity_calc", "Intensity_Asample", "Intensity_bg")

# add a residue column as difference between calculated and samples intensity
# change column name accordingly if necessary
peaks$residue <- peaks$Intensity_calc - peaks$Intensity_Asample

# load peaks file
bar <- read_csv("DataFiles/xrdData/800 peak.csv")
# keep only the thetas for peak locations
bar <- bar[2]
# rename column name
colnames(bar)[1] = "theta2"

# Plot
# change plot parameters, e.g. color, thickness of lines appropriately
# consider the geom_segment aesthetics to match the plot
peaks %>% select(!Intensity_bg) %>% pivot_longer(!theta2, names_to = "type", values_to = "intensity") %>% ggplot(aes(theta2, intensity, color = type)) + geom_line() + labs(x=expression(2*theta*", °"), y = "Intensity, cps") + theme_classic() + theme(legend.position = "top") + scale_x_continuous(expand = c(0, 0), limits = c(20, 80), breaks = scales::pretty_breaks(n = 20)) + scale_y_continuous( breaks = scales::pretty_breaks(n = 6)) + scale_color_manual("", values = c("black", "red", "magenta"), labels = c("Calculated Intensity", "Sample", "Residue")) + scale_size_manual(values = c(0.5, 0.1, 0.1), guide = "none") + geom_segment(aes(x=theta2, y=20, xend=theta2, yend=80), color="#1BAF43", size =1.1, data = bar)

