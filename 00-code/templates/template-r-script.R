# ---
# title: Template - R script
# author: Raissa L Gill
# date: 2023-09-26
# description: Quick template and guide for formatting R scripts
# ---

# Read me!
# ============================================================================|

# This R script contains the following:
# * Comments - how to write, format and structure your comments.
# * Other pointers - tips on general structure and syntax.

# It has the following package dependencies:
sort(unique(dependencies(getSourceEditorContext()$path)$Package))

# More information on coding style can be found here: style.tidyverse.org


# Comments
# ============================================================================|

# A one-liner comment has no full stop
# Comments with at least two lines have a full stop, this sentence is getting
# quite long but is necessary for demonstration.

# Dot-pointed comments (*) have a full stop, regardless of whether they are
# one- or two-liners, like so:
# * This is the first dot point.
# * This is the second.

# Comments are written after one space and start with a capital letter

# Different topics are separated by a single vertical space between lines


# Other pointers
# ============================================================================|

# ----------------------------------------------------------------------------|
# Structure
# ----------------------------------------------------------------------------|

# --- Margins ---|

# All lines should be <80 characters - you can configure a margin line in
# "Tools" (top) > "Global Options..." > Code > Display > tick "Show margin" and
# enter "80" in "Margin column" > OK.

# --- Spacing ---|

# Use of extra spaces is encouraged to vertically align multiple lines code.

# Add a single space after commas and a space each side of operators (+ - etc.)


# ----------------------------------------------------------------------------|
# Syntax
# ----------------------------------------------------------------------------|

# Use " " not ' ' for quotations

# When naming objects, try to adhere to the following:
# * Use lower-case letters and separate words by a single "_".
# * Use verbs for functions and nouns for objects.
# * Keep names short but informative.

# When naming this R script:
# * Use lower-case letters and separate words by a single "-" or "_". Note 
#   that I have capitalised the first letter as a personal preference.
# * If files require numbering, prefix with numbers and left-pad with "0".
