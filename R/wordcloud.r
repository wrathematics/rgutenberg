setMethod("wordcloud", signature(words="book"),
  function(words)
  {
    return( wordcloud(words=words@text) )
  }
)
