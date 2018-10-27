# LESSON 2 highlights
# Read, view data
library(tidyverse)
movies <- read_csv("data/boxoffice2018.csv")
head(movies)
View(movies)

# Histogram
ggplot(movies, aes(x = total_gross/1000000)) +
    geom_histogram(color = "grey50", fill = "cornflowerblue",
                   bins = 15) +
    xlab("Total gross (in millions of $)") +
    ggtitle("Histogram of Total Gross (in millions)")

# Scatterplot
ggplot(movies, aes(x = imdb_metascore,
                   y = total_gross/1000000)) +
    geom_point() + ylab("Total gross (in millions of $)")


# Bar chart
titanic <- as.data.frame(Titanic)
ggplot(titanic, aes(x = Sex, y = Freq)) + geom_col()

ggplot(titanic, aes(x = Sex, y = Freq, fill = Survived)) +
    geom_col()

ggplot(titanic, aes(Sex, Freq, fill = Survived)) +
    geom_col(position = "dodge")
