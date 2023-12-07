## Load Data

df = read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
 ## Looking into the Data
View(df)
## Load Library
install.packages("tidyverse")
## Import library
library(tidyverse)
## Check Data Type
str(df)
## Checking missing values
colSums(is.na(df))
## Drop missing values
df = na.omit(df)
## Checking that the rows have been dropped
colSums(is.na(df))
## Summary Statistics
summary(df)
## Scatter Plot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))
## Bar Chart
ggplot(df, aes(x=Year)) + geom_bar()
## Export Clean Data
write.csv(df, "clean_df.csv")
## Average Audience Score
mean(df$Audience..score..)
##Max Worldwide Gross
max(df$Worldwide.Gross)
## Minimum Rotten Tomatoes
min(df$Rotten.Tomatoes..)
## Median profitability
median(df$Profitability)
## Films with a 80 or higher audience score
subset(df, subset = df$Audience..score..>80, "Film")
## Films with a 90 or higher Rotten Tomatoes score
subset(df, subset = df$Rotten.Tomatoes..>90, "Film")







