#setMethod("title", signature(x="book"),
#  function(x)
#  {
#    return( x@title )
#  }
#)



setMethod("author", signature(x="book"),
  function(x)
  {
    return( x@author )
  }
)



setMethod("text", signature(x="book"),
  function(x, with.license=TRUE)
  {
    if (with.license)
      return( paste(x@header, x@text, x@license, collapse="\n") )
    else
      return( paste(x@text, collapse="\n") )
  }
)



setMethod("language", signature(x="book"),
  function(x)
  {
    return( x@language )
  }
)



setMethod("license", signature(x="book"),
  function(x)
  {
    return( x@license )
  }
)


