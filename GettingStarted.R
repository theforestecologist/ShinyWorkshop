#Set up your computer to easily interact during "Intro to Shiny" Workshop (May 3, 2017).
#Code will create "ShinyWorkshop" folder in your working directory AND install any missing R packages needed.
#Code will also open HTML page to allow you to follow along with code walkthrough during workshop.

#Create new folder "ShinyWorkshop" to put files into:
  mainDir <- getwd()
  subDir <- 'ShinyWorkshop'
  dir.create(file.path(mainDir, subDir))

#Download zipped files to subdirectory "ShinyWorkshop":
  ## The files are currently saved as a .zip file on GitHub, user: theforestecologist
  u1 <- "https://raw.githubusercontent.com/theforestecologist/ShinyWorkshop/master/IntroToShinyWorkshop.zip"
  download.file(u1, file.path(subDir, basename(u1)))  

#Change Working directory to newly created Workshop subdirectory:
  setwd(file.path(mainDir, subDir))

#Unzip files:
  utils::unzip("IntroToShinyWorkshop.zip")

#Download/install necessary packages and open Read-along document
  source("runShinyWorkshop.R")

