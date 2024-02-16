# ---
# Title: Project setup - Install dependencies for project initiation
# Author: Raissa L Gill
# Date: 2023-09-26
# Description: Installs required packages & saves via 'renv' for future use
# ---

# Read me!
# ============================================================================|

# This R script contains the following:
# * List package(s) - vector of project & template/workflow dependencies
# * Install, load & save package(s) - installs, loads and saves list of 
#   package(s) to the project's lockfile.

# More information on coding style can be found here: style.tidyverse.org


# List package(s)
# ============================================================================|

# Define vector of package names
list_packages <- c(
  
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
  "rstudioapi", # List package dependencies
  "styler" # Format code according to the tidyverse style guide
)


# Install, load & save package(s)
# ============================================================================|

# Identify packages that aren't already on this device
install_packages <- list_packages[!list_packages %in% installed.packages()]

# Install missing packages, including their dependencies
for (lib in install_packages) install.packages(lib, dependencies = TRUE)

# Load all packages
sapply(list_packages, require, character = TRUE)

# Take snapshot of packages (including their version) for future records
renv::snapshot()
