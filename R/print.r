setMethod("print", signature(x="book"),
  function(x)
  {
    str <- character(3L)
    
    str[1L] <- paste("Title: ", gsub(x=x@title, pattern="\r", replacement=". "))
    str[2L] <- paste("Author: ", paste(x@author, collapse=", "))
    str[3L] <- paste("Language: ", x@language, "\n")
    
    cat(paste(str, collapse="\n"))
    
    invisible()
  }
)



setMethod("print", signature(x="pgbook"),
  function(x)
  {
    str <- character(6L)
    
    str[1L] <- "This eBook is for the use of anyone anywhere at no cost and with almost no restrictions whatsoever.  You may copy it, give it away or re-use it under the terms of the Project Gutenberg License included with this eBook or online at www.gutenberg.org\n"
    str[2L] <- paste("Title: ", gsub(x=x@title, pattern="\r", replacement=". "))
    str[3L] <- paste("Author: ", paste(x@author, collapse=", "))
    str[4L] <- paste("Language: ", x@language)
    str[5L] <- paste("URL: ", x@url)
    str[6L] <- "\nThis text is subject to the terms of the Project Gutenberg license.  Type 'pg.license()' for details.\n"
    
    cat(paste(str, collapse="\n"))
    
    invisible()
  }
)



setMethod("show", signature(object="book"),
  function(object)
  {
    print(x=object)
    invisible()
  }
)

setMethod("show", signature(object="pgbook"),
  function(object)
  {
    print(x=object)
    invisible()
  }
)



setMethod("print", signature(x="project_gutenberg_license"),
  function(x)
  {
    cat(pg.license())
  }
)
