# Analysis of data from the Child Health and Development Study
# conducted in the US 1960-1967.

# Load packages -----------------------------------------------------------
library(readxl)

# Import data -------------------------------------------------------------
infant <- read_excel("infant.xlsx")

# Cleaning data -----------------------------------------------------------

# 1. Remove redundant variables and variables related to father
infant <- select(infant, -pluralty, -outcome, -sex, -(drace:dwt))

# 2a. Filter to exclude extremely premature babies
infant <- filter(infant, gestation > 28 * 7 & gestation < 52 * 7)

# 2b. Filter to exclude observations where smoking status or race unknown
infant <- filter(infant, smoke != 9 & !race %in% c(10, 99))

# 3. Recode data
# - replace 99 with NA in `ht` (mother's height)
# - convert the numeric codes for `smoke` (smoking status) to a factor
infant <- mutate(infant,
                 ht = ifelse(ht == 99, NA, ht),
                 smoke = recode_factor(smoke,
                                       `1` = "currently",
                                       `2`= "until pregnancy",
                                       `3` = "used to",
                                       `0` = "never"))

# 4. Run the code to clean the remaining variables
source("scripts/clean_remaining.R")

# Save cleaned data -------------------------------------------------------
saveRDS(infant, "data/infant.rds")
