# load the libraries necessary to produce the plot
library(ggplot2)
library(cowplot)

#read in the excel file with the dataset and confirm it was loaded correctly
dat = read.csv("sbry.csv", header = TRUE)
head(dat)
dim(dat)

#use the data set "dat" from the excel file; set the x and y variables, chart them as a scatterplot, label the axes, and then add a trendline
ggplot(data = dat,
       aes(x = Precipitation, y = Strawberry.Yield)) +
  geom_point() +
  xlab("Precipitation (mm)") +
  ylab("Strawberry Yield (kg)") +
  stat_smooth(method="lm") +
  theme_classic()