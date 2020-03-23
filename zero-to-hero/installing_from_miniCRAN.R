# Define path to miniCRAN
pth <- "C:/Users/hturner/Desktop/miniCRAN"

# install from miniCRAN
install.packages(c("rio", "ggplot2", "broom", "dplyr", "knitr", "rmarkdown"),
                 repos = paste0("file:///", pth),
                 type = "win.binary")
