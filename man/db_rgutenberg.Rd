\name{ rgutenberg }

\alias{rgutenberg}

\title{ Random Book from Project Gutenberg }

\description{
  This function gets a random book from Project Gutenberg and returns
  and object of class 'book'.
}
\usage{
  rgutenberg()
}
\details{
  The function grabs a random book from Project Gutenberg.  The purpose
  is to offer developers something like \code{runif()}, \code{rnorm()}, etc., 
  but with text.  This functionality is ideal for developers who need
  quick access to random corpora for developing and testing methods
  that operate on text.  It is not meant to be used as an automated
  way of downloading large portions of the Project Gutenberg corpora;
  that would be insane.  Please also be considerate to their servers
  and don't abuse this functionality.  Too many queries in a short
  period of time will get you temporarily banned from their servers.
  
  Any text downloaded in this way is subject to the Project Gutenberg 
  license.  See \link{pg-license} for details.
}
\value{
  Returns a 'book' class object.
}
\seealso{
  \code{\link{book-class}, \link{pg-license}}
}
\examples{
\dontrun{
library(rgutenberg, quietly=TRUE)
rgutenberg()
}
}
\keyword{Data Generation}


