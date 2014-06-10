setMethod("wordcloud", signature(words="book"),
  function(words)
  {
    text <- text(words, with.license=FALSE)
    
    return( wordcloud::wordcloud(words=text) )
  }
)
