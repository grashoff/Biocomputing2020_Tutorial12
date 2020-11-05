library(ggplot2)
library(cowplot)
dat2 = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)

north <- dat2[dat2[,1]=="north", ]
head(north)
east <- dat2[dat2[,1]=="east", ]
head(east)
south <- dat2[dat2[,1]=="south", ]
west <- dat2[dat2[,1]=="west", ]

name <- c("north", "east", "south", "west")
allmean <- c(mean(north[,2]), mean(east[,2]), mean(south[,2]), mean(west[,2]))

means <- data.frame(region = name, mean = allmean)

means

ggplot(data = means, aes(x = region, y=mean)) +
  geom_bar(stat= "identity", fill = "red", color = "black") +
  theme_classic()

ggplot(data = dat2,
       aes(x = region, y = observations)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
