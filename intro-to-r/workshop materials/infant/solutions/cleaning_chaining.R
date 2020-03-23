# Analysis of data from the Child Health and Development Study
# conducted in the US 1960-1967.

# Load packages -----------------------------------------------------------
library(dplyr)
library(readxl)

# Import data -------------------------------------------------------------
infant <- read_excel("data/infant.xlsx")

# Cleaning data -----------------------------------------------------------

infant <- infant %>%
    # remove redundant variables and variables related to father
    select(-pluralty, -outcome, -sex, -(drace:dwt)) %>%
    # filter to exclude extremely premature babies
    filter(gestation > 28 * 7 & gestation < 52 * 7) %>%
    # filter to exclude observations where smoking status or race unknown
    filter(smoke != 9 & !race %in% c(10, 99)) %>%
    # recode data
    mutate(ht = ifelse(ht == 99, NA, ht),
           smoke = recode_factor(smoke,
                                 `1` = "currently",
                                 `2` = "until pregnancy",
                                 `3` = "used to",
                                 `0` = "never"))

# 4. Run the code to clean the remaining variables
source("scripts/clean_remaining.R")

# Save cleaned data -------------------------------------------------------
saveRDS(infant, "data/infant.rds")
