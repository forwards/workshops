library(miniCRAN)

repos <- "https://cran.rstudio.com/"

# Specify list of packages to download
pkgs <- c("tidyverse", "skimr", "rio", "broom", "rmarkdown")
pkgList <- pkgDep(pkgs, repos = repos, type = "source", suggests = FALSE)
pkgList

# Create folder for miniCRAN
# - here I create a folder on my USB drive
pth <- file.path("G:/miniCRAN")
dir.create(pth)

# Make repo for source and win.binary
makeRepo(pkgList, path = pth, repos = repos,
         type = c("source", "win.binary"))
