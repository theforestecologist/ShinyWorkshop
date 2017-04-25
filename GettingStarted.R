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