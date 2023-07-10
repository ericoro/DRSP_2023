install.packages("ggplot2")
install.packages(c("usethis","credentials"))

## load required packages
library(ggplot2)
data <- read.csv("data/travel insurance.csv")

##Distribution of 1 variable 
ggplot(data, aes(x=Age)) +
    geom_histogram(fill= "yellow",bins = 30, stat="count")+
    labs(title="Travel Insurance by Age")
mean(data$Age)

ggplot(data, aes(x=Agency.Type, y=Duration))+
  geom_violin() + geom_boxplot(width=0.2, color="purple")+
  labs(title="Travel Insurance by Agency Type and Duration", xlab= "Agency Type", ylab= "Duration")

ggplot(data, aes(x=Net.Sales, y=Commision))+
  geom_point(alpha=0.3) +
  geom_smooth(color="blue")+
  geom_smooth() +
  labs(title="Travel Insurance Net Sales by Commision") +
  theme_minimal()
  
