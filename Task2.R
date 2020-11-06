# add the libraries necessary to code plots
library(ggplot2)
library(cowplot)

# read in the data frame from the text file which uses commas as its sepatator
dat2 = read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)

# create 4 different data frames from the overall data set, each having info from a specific region
north <- dat2[dat2[,1]=="north", ]
east <- dat2[dat2[,1]=="east", ]
south <- dat2[dat2[,1]=="south", ]
west <- dat2[dat2[,1]=="west", ]

# create a data frame that has the names of the regions in the first column and the mean observations from that specific region in the second column
name <- c("north", "east", "south", "west")
allmean <- c(mean(north[,2]), mean(east[,2]), mean(south[,2]), mean(west[,2]))
means <- data.frame(region = name, mean = allmean)


# create a barplot that uses region as the x variable and means from each region as the y variable
ggplot(data = means, aes(x = region, y=mean)) +
  geom_bar(stat= "identity", fill = "red", color = "black") +
  theme_classic()

# create a scatterplot from the original data plot with a jitter call to clean up the image
ggplot(data = dat2,
       aes(x = region, y = observations)) +
  geom_jitter() +
  xlab("Region") +
  ylab("Observations") +
  theme_classic()
