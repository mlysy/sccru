###########################################################
#Common functions to use across all modules
###########################################################

#----------------------------------------------
# function to print the link to R packages
cran_link <- function(pkg) {
  paste0("[**", pkg, "**](https://CRAN.R-project.org/package=", pkg, ")")
}
#----------------------------------------------