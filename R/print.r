setMethod("print", signature(x="book"),
  function(x)
  {
    str <- character(7L)
    
    str[1L] <- "This eBook is for the use of anyone anywhere at no cost and with almost no restrictions whatsoever.  You may copy it, give it away or re-use it under the terms of the Project Gutenberg License included with this eBook or online at www.gutenberg.org\n"
    str[2L] <- paste("Title: ", gsub(x=x@title, pattern="\r", replacement=". "))
    str[3L] <- paste("Author: ", paste(x@author, collapse=", "))
    str[4L] <- paste("Language: ", x@language)
    str[5L] <- paste("Lines of Text: ", x@nlines)
    str[6L] <- paste("Words: ", x@nwords)
    str[7L] <- "\nThis text is subject to the terms of the Project Gutenberg license.  Type 'pg.license()' for details.\n"
    
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
