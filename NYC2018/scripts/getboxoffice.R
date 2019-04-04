# update box office data

library(tidyverse)
library(rvest)
library(lubridate)

year <- substr(Sys.Date(), 3, 4)

url <- paste0("https://www.boxofficemojo.com/yearly/chart/?yr=20", year)

alltables <- read_html(url) %>%
    html_nodes("table") %>%
    html_table(fill = TRUE)

top100 <- alltables[[7]] %>%
    slice(-c(1:2, 103:106)) %>%
    select(rank = X1, title = X2, studio = X3,total_gross = X4, theatres = X5,
           open = X8, close = X9) %>%
    mutate(rank = parse_number(rank),
           total_gross = parse_number(total_gross),
           theatres = parse_number(theatres),
           open = as.Date(paste0(year, "/", open), format = "%x"),
           close = as.Date(paste0(year, "/", close), format = "%x")) %>%
    mutate(close = ifelse(close < open, paste0(year(close)+1, "-",
                                               month(close), "-",
                                               day(close)),
                          as.character(close))) %>%
    mutate(close = as.Date(close))


write_csv(top100, paste0("NYC2018/data/boxoffice", Sys.Date(), ".csv"))
