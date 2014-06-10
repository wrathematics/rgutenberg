setMethod("as.book", signature(x="character"),
  function(x, title, author, language)
  {
    if (missing(x)) x <- ""
    if (missing(title)) title <- "Unknown"
    if (missing(author)) author <- "Unknown"
    if (missing(language)) language <- "Unknown" 
    
    ret <- new("book", text=x, title=title, author=author, language=language)
    
    return( ret )
  }
)



setMethod("as.book", signature(x="missing"),
  function(x, title, author, language)
  {
    x <- ""
    if (missing(title)) title <- "Unknown"
    if (missing(author)) author <- "Unknown"
    if (missing(language)) language <- "Unknown" 
    
    ret <- new("book", text=x, title=title, author=author, language=language)
    
    return( ret )
  }
)



setMethod("as.book", signature(x="pgbook"),
  function(x)
  {
    ret <- new("book", text=x@text, title=x@title, author=x@author, language=x@language)
    
    return( ret )
  }
)

