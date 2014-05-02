setMethod("summary", signature(object="book"),
  function(object)
  {
    text <- object@text
    
    nlines <- length(text)
    nwords <- sum(sapply(X=text, FUN=function(l) length(unlist(strsplit(x=l, split=" ")))))
    
    ret <- c(nlines=nlines, nwords=nwords)
    
    return( ret )
  }
)
