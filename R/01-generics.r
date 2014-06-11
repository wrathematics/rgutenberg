#setGeneric(name="print", useAsDefault=base::print, package="rgutenberg")
#setGeneric(name="summary", useAsDefault=base::summary, package="rgutenberg")
setGeneric(name="wordcloud", useAsDefault=wordcloud::wordcloud, package="rgutenberg")


setGeneric(name="author", 
  function(x)
    standardGeneric("author"),
  package="rgutenberg"
)

setGeneric(name="text", 
  function(x, ...)
    standardGeneric("text"),
  package="rgutenberg"
)

setGeneric(name="language", 
  function(x)
    standardGeneric("language"),
  package="rgutenberg"
)

setGeneric(name="license", 
  function(x)
    standardGeneric("license"),
  package="rgutenberg"
)

setGeneric(name="as.book", 
  function(x, ...)
    standardGeneric("as.book"),
  package="rgutenberg"
)

