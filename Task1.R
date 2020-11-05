library(ggplot2)
library(cowplot)
dat = read.csv("sbry.csv", header = TRUE)
head(dat)
dim(dat)
ggplot(data = dat,
       aes(x = Precipitation, y = Strawberry.Yield)) +
  geom_point() +
  xlab("Precipitation (mm)") +
  ylab("Strawberry Yield (kg)") +
  stat_smooth(method="lm") +
  theme_classic()