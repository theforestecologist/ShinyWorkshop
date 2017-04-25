needed.packages <- c("rmarkdown","shiny","png")
install.packages <- needed.packages[!(needed.packages %in% installed.packages()[,"Package"])]
if(length(install.packages) > 0) install.packages(install.packages, repos="http://cran.rstudio.com/")
lapply(c(needed.packages,"knitr"), library, character.only = T)

setwd("./IntroToShinyWorkshop")

rmarkdown::run("./IntroToShinyWorkshop.Rmd")