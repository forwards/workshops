library(tidyverse)
library(fwdbrand)

date <- "October 27, 2018"

location <- "New York City"

workshop <- "Data Science in R: Navigating NYC"

curriculum <- "~/workshops/NYC2018/contents.md"

certifier <- "Emily Dodwell and Joyce Robbins"

credentials <- "Forwards Teaching Team Members"

attendees <- read_csv("~/Downloads/attendees.csv") %>% mutate(name = paste(`First Name`, `Last Name`)) %>% pull(name)

dir <- "~/Downloads/certificates"

papersize <- "letterpaper"

create_workshop_certificates(date,
    location, workshop, curriculum,
    certifier, credentials, attendees,
    dir, papersize)

