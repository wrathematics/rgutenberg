\name{pg-license}

\alias{pg-license}

\title{ Project Gutenberg License }

\description{
  Any text downloaded from Project Gutenberg using this package is subject
  to the Project Gutenberg License.
}
\usage{
  pg.license()
}
\details{
  The condensed version of the license (taken from the Project Gutenberg 
  site) is:
  
  * You may only distribute verbatim copies of the ebooks. No changes 
    are allowed to the ebook contents. (Though reformatting the ebook 
    to a different file format is considered okay).
  * If you charge money for the copies you distribute, you have to 
    pay royalties to Project Gutenberg.
  * You must refund your clients for defective copies or if they 
    don't agree with the Project Gutenberg license. 
  
  If you wish to read the full license, you may do so by visiting:
  
  \url{http://www.gutenberg.org/wiki/Gutenberg:The_Project_Gutenberg_License#Using_the_Project_Gutenberg_Trademark}
  
  or by using the \code{pg.license()} function.
  
  
  Neither the package author, nor the package itself, has any 
  affiliation with Project Gutenberg.
}
\seealso{
  \code{\link{book-class}, \link{license}}
}
\examples{
\dontrun{
library(rgutenberg, quietly=TRUE)

pg.license()
}
}
\keyword{Data Generation}


