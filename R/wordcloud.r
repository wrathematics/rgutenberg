setMethod("wordcloud", signature(words="book"),
  function(words)
  {
    text <- text(words, with.license=FALSE)
    return( wordcloud(words=text) )
  }
)
