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
  function(x)
  {
    return( x@text )
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


