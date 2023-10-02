# ----------------------------------------------------------------------------/
# Title: Project Setup - Install dependencies for project initiation
# Author: Raissa Gill
# Date: 26 September 2023
# Description: Installs required packages & saves via 'renv' for future use
# ----------------------------------------------------------------------------/

# define vector of library names
libraryRecord <- c(
  "here", # allow relative pathing
  "renv", # create local environment for packages
  "config", # configure R environment
  "plyr", # format/filter/select data
  "data.tree", # make flowchart
  "rmarkdown" # generate report documents from code
)

# identify packages that aren't already on this device
fn.installLibrary <- libraryRecord[!libraryRecord %in% installed.packages()]

# install missing packages, including their dependencies
for(lib in fn.installLibrary) install.packages(lib, dependencies=TRUE)

# load all packages
sapply(libraryRecord, require, character=TRUE)

# take snapshot of libraries for future records
renv::snapshot()
