# LESSON 3 highlights
# mutate -- add a column
movies <- movies %>%
  mutate(total_gross_millions = total_gross/1000000)

# top_n -- choose the highest n values of a column
top10 <- movies %>% top_n(10, total_gross_millions)

# filter -- choose certain rows based on a condition
movies %>% filter(studio == "Uni.")
movies %>% filter(imdb_metascore >= 70 & imdb_metascore <= 80)
movies %>% filter(open == as.Date("2018-06-01"))
movies %>% filter(close > as.Date("2018-09-01") &
           close < as.Date("2018-09-15"))

# select
df <- movies %>% select(title, studio)

# filter and select
movies %>% filter(title == "RBG") %>% select("open")

# group_by / summarize
studio_count <- movies %>% group_by(studio) %>%
  summarize(count = n())

# group_by / summarize / arrange
movies %>% group_by(studio) %>%
  summarize(mean_metascore = round(mean(imdb_metascore), 1)) %>%
  arrange(desc(mean_metascore))

First let's turn it into a horizontal bar chart, so we can read the labels (film titles):

```{r}
ggplot(top10, aes(title, total_gross_millions)) + geom_col() +
  coord_flip()
```

## Next let's order the films by total_gross:

```{r}
ggplot(top10, aes(fct_reorder(title, total_gross_millions),
           total_gross_millions)) +
  geom_col() + coord_flip()
```

## Now we'll fix up the labels:

```{r}
ggplot(top10, aes(fct_reorder(title, total_gross_millions),
                  total_gross_millions)) +
  geom_col() + coord_flip() +
  ylab("Total Gross (millions of $)") +
  xlab("") +
  ggtitle("Top 10 Grossing Movies of 2018")
```

## And finally change the color to indicate the studio:

```{r}
ggplot(top10, aes(fct_reorder(title, total_gross_millions),
                  total_gross_millions)) +
  geom_col(aes(fill = studio)) + coord_flip() +
  ylab("Total Gross (millions of $)") +
  xlab("") +
  ggtitle("Top 10 Grossing Movies of 2018")
```

YOUR TURN

Create a similar bar chart showing the the movies shown at the highest number of theatres.

# More examples

## Films by Uni.

```{r}
universal <- movies %>% filter(studio == "Uni.")

ggplot(universal, aes(fct_reorder(title, total_gross_millions),
                      total_gross_millions)) +
  geom_col(fill = "darkseagreen") + coord_flip() + xlab("") +
  ylab("Total Gross (millions $)") +
  ggtitle("Universal Studios",
          sub = "Top Grossing Movies of 2018")
```

## Show number of films by studio as a bar plot

```{r}
ggplot(studio_count, aes(fct_reorder(studio, count), count)) +
  geom_col(fill = "cornflowerblue") + coord_flip() +
  xlab("") +
  ggtitle("Top 100 films of 2018 by studio")
```

```{r}
ggplot(movies, aes(studio,imdb_metascore)) + geom_boxplot() + geom_point(color = "blue") + coord_flip()
```

