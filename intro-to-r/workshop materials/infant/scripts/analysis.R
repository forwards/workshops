# Analysis of cleaned data from the Child Health and Development Study
# conducted in the US 1960-1967.

# Load packages -----------------------------------------------------------


# Import data -------------------------------------------------------------
infant <- readRDS("data/infant.rds")

# Count by birth weight category ------------------------------------------
infant %>%
    group_by() %>%
    summarise() %>%
    ungroup()

# Explore association of birth weight (g) with gestation ------------------

# Filter outliers ---------------------------------------------------------
infant <- infant %>%
    filter(gestation > 180)


# Explore association of birth weight (g) with mother's age ---------------

