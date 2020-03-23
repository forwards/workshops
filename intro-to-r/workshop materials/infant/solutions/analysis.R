# Analysis of cleaned data from the Child Health and Development Study
# conducted in the US 1960-1967.

# Load packages -----------------------------------------------------------
library(dplyr)
library(ggplot2)

# Import data -------------------------------------------------------------
infant <- readRDS("data/infant.rds")


# Count by birth weight category ------------------------------------------
infant %>%
    group_by(bwt_cat) %>%
    summarise(Count = n()) %>%
    ungroup()

# Explore association of birth weight (g) with gestation ------------------
ggplot(infant, aes(y = bwt * 28.35, x = gestation)) +
    geom_point()

# Filter outliers ---------------------------------------------------------

infant <- infant %>%
    filter(gestation > 180)


# Explore association of birth weight (g) with mother's age ---------------
ggplot(infant, aes(y = bwt * 28.35, x = age, color = smoke)) +
    geom_point() +
    geom_smooth(method = "lm") +
    labs(x = "Gestation",
         y = "Birth Weight (g)",
         title = "Birth Weight by Mother's Age",
         color = "Smoking status")



