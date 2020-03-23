# Cleaning data from the Child Health and Development Study
# conducted in the US 1960-1967.

# Load packages -----------------------------------------------------------


# Import data -------------------------------------------------------------


# Cleaning data -----------------------------------------------------------

# 1. Select columns

## remove redundant variables and variables related to father
infant <- select()

# 2. Filter rows

## filter to exclude extremely premature babies
infant <- filter()

## filter to exclude observations where smoking status or race unknown
infant <- filter(infant, smoke != 9 & !race %in% c(10, 99))

# 3. Recode data

# - replace 99 with NA in `ht` (mother's height)
# - convert the numeric codes for `smoke` (smoking status) to a factor
infant <- mutate(infant,
                 ht = ifelse(),
                 smoke = recode_factor(smoke,
                                       `1` = "currently", ))

# 4. Run the code to clean the remaining variables
source("scripts/clean_remaining.R")

# Save cleaned data -------------------------------------------------------
saveRDS(infant, "data/infant.rds")

