setMethod("wordcloud", signature(words="book"),
  function(words, freq, scale = c(4, 0.5), min.freq = 3, max.words = Inf, 
    random.order = TRUE, random.color = FALSE, rot.per = 0.1, 
    colors = "black", ordered.colors = FALSE, use.r.layout = FALSE, 
    fixed.asp = TRUE, ...)
  {
    text <- text(words, with.license=FALSE)
    
    ret <- wordcloud::wordcloud(words=text, freq=freq, scale=scale,
    min.freq=min.freq, max.words=max.words, random.order=random.order,
    random.color=random.color, rot.per=rot.per, colors=colors,
    ordered.colors=ordered.colors, use.r.layout=use.r.layout, 
    fixed.asp=fixed.asp, ...)
    
    invisible()
  }
)



setMethod("wordcloud", signature(words="character"),
  wordcloud::wordcloud
)
