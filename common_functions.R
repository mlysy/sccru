###########################################################
#Common functions to use across all modules
###########################################################

#----------------------------------------------
# require useful libraries
require("htmltools")
require("xfun")
#----------------------------------------------

#----------------------------------------------
# function to print the link to R packages
cran_link <- function(pkg) {
  paste0("[**", pkg, "**](https://CRAN.R-project.org/package=", pkg, ")")
}
#----------------------------------------------

#----------------------------------------------
# function to add the data into the folder and create a download link
embed_data_file <- function(path, name = basename(path), 
                      text = name, ...) {
  #copy file to the data directory
  wd <- getwd()
  new.path <- paste0(wd, "/_book/data/")
  if (!dir.exists(new.path)) {
    dir.create(new.path)
  }
  new.path <- paste0(new.path, name)
  file.copy(path, new.path, overwrite = TRUE)
  
  #create a download link in html file
  h = paste0("data:", mime::guess_type(new.path), ";base64,", 
              base64_encode(new.path))
  htmltools::a(text, href = new.path, download = name, ...)
}
#----------------------------------------------