# ============================================================================|
# Title: Project setup - Install dependencies for project initiation
# Author: Raissa L Gill
# Date: 2023-09-26
# Description: Installs required packages & saves via 'renv' for future use
# ============================================================================|

# Define vector of package names
packages_record <- c(

  # Project dependencies:

  # For example...
  # "ggplot2", # Nice plots
  # "ggpubr", # Saving plots

  # Template/workflow dependencies:

  "config", # Configure R environment
  "devtools", # Use development tools
  "fs", # For path encoding consistency
  "here", # Allow relative directory pathing
  "lintr", # Check adherence to style guide
  "markdown", # Generate report documents from code
  "plyr", # Format/filter/select data
  "renv", # Create local environment for packages
  "rmarkdown", # Extension to markdown
  "styler" # Format code according to the tidyverse style guide
)

# Identify packages that aren't already on this device
install_packages <- packages_record[!packages_record %in% installed.packages()]

# Install missing packages, including their dependencies
for (lib in install_packages) install.packages(lib, dependencies = TRUE)

# Load all packages
sapply(packages_record, require, character = TRUE)

# Take snapshot of packages (including their version) for future records
renv::snapshot()
