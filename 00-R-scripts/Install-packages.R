# ----------------------------------------------------------------------------/
# Title: Project Ongoing - Install packages for project progression
# Author: Raissa Gill
# Date: 26 September 2023
# Description: Installs packages & saves via 'renv' for future use
# ----------------------------------------------------------------------------/

# define vector of library names
libraryRecord <- c(
  "dplyr", # format/filter/select data
  "tidyr", # restructure data
  "ggplot2", # plotting
  "ggpubr" # plot assembly/saving
)

# identify packages that aren't already on this device
fn.installLibrary <- libraryRecord[!libraryRecord %in% installed.packages()]

# install missing packages, including their dependencies
for(lib in fn.installLibrary) install.packages(lib, dependencies=TRUE)

# load all packages
sapply(libraryRecord, require, character=TRUE)

# take snapshot of libraries for future records
renv::snapshot()
