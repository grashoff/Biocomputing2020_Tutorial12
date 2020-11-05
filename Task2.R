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
allmean <- c(mean(north), mean(east), mean(south), mean(west))

means <- data.frame(region = name, mean = numeric(4))


ggplot(data = dat2, aes(x = region, y=observations)) +
  geom_bar(stat= "identity", fill = "red", color = "black") +
  theme_classic()

ggplot(data = dat2,
       aes(x = region, y = observations)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
