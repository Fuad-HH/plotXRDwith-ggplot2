# Plot RIGAKU Smartlab Xray Diffractometer Spectrum with **ggplot2** (an R package) Directly Using the csv Files.
---
Though this machine can automatically analyze data and produce great plots, sometimes it is needed to do it on your own to get full freedom.  
These R scrips are intended to plot the XRD data from csv files produced by the RIGAKU Smartlab Xray Diffractometer analyzer.  

### Required Files
Two files named `*data.csv` and `*peaks.csv` are produced for each sample.  
`* -> Sample Name`

The `*data.csv` file can be produced in two formats.
1. One with only the `Sampled Intensity` and `Background Intensity`
2. And the other with several `Individual Peak` columns.
---
### Description of Scripts
There are two scripts:
1. The `plotOnlyCount.R` is a very simple code to just read the `*data.csv` file to plot only the **Intensity vs Angle** plot. Please make sure that you have the **first** kind of `*data.csv` file. If you have the **second** format, change the column numbers in the script accordingly to choose the appropriate columns.
2. The `xrdPlots.R` is also a simple script to plot _Intensity of Sample, Background Intensity, and Calculated Intensity_ along with the `Peak Locations` from the `*data.csv` and `*peaks.csv` files. Please make sure that you have the **second** type of `*data.csv` file.

---
### Sample Plots
#### 1. Using `plotOnlyCounts.R`:  

![Sample Plot for Script 1](https://github.com/Fuad-HH/plotXRDwith-ggplot2/blob/main/Sample-PlotOnlyCounts-script.svg)  



#### 2. Using `xrdPlots.R`:  

![Sample Plot for Script 2](https://github.com/Fuad-HH/plotXRDwith-ggplot2/blob/main/Sample-xrdPlots-script.svg)
