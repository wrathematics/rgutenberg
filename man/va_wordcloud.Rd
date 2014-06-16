\name{wordcloud}
\alias{wordcloud}
\docType{methods}

\alias{wordcloud-method}
\alias{wordcloud,book-method}
\alias{wordcloud}


\title{ wordclouds }
\description{
  Creates a wordcloud for a downloaded text using the wordcloud package.
}
\section{Methods}{
\describe{
\item{\code{signature(words = "book")}}{}
}
}
\usage{
\S4method{wordcloud}{book}(words, freq, scale = c(4, 0.5), min.freq = 3,
  max.words = Inf, random.order = TRUE, random.color = FALSE, 
  rot.per = 0.1, colors = "black", ordered.colors = FALSE, 
  use.r.layout = FALSE, fixed.asp = TRUE, ...)
}
\arguments{
  \item{words}{a book object.}
  \item{freq,scale,min.freq,max.words,random.order,random.color,rot.per,
  colors,ordered.colors,use.r.layout,fixed.asp,...}{As in the 
  wordcloud package's \code{wordcloud()} function.}
}
\details{
  This is an example showing how one can use the information stored in 
  a book object to do analysis.  Exactly as in the code here, you would
  call \code{text(book, with.license=FALSE)} to extract the text for
  analysis.  Note that doing so does not absolve you from the Project
  Gutenberg license.
}
\examples{
\dontrun{
library(rgutenberg)
x <- rgutenberg()

wordcloud(x)
}
}
\keyword{Methods}
