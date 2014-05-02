\name{slot accessors}
\docType{methods}

\alias{author-method}
\alias{author,book-method}
\alias{author}

\alias{text-method}
\alias{text,book-method}
\alias{text}

\alias{language-method}
\alias{language,book-method}
\alias{language}

\alias{license-method}
\alias{license,book-method}
\alias{license}

\title{slot accessors}
\description{
  Methods for accessing slots of a book object.
}
\section{Methods}{
\describe{
\item{\code{signature(x = "book")}}{}
}
}
\usage{
\S4method{author}{book}(x)
\S4method{text}{book}(x)
\S4method{language}{book}(x)
\S4method{license}{book}(x)
}
\arguments{
  \item{x}{book object}
  \item{with.license}{logical; determines if selection via the \code{text()}
  method should include (in the corpus itself) the license the book is 
  subject to.}
}
\details{
  \code{author(x)}, \code{language(x)}, and \code{license(x)} are just 
  syntactic sugar for \code{x@author}, \code{x@language}, and \code{x@license}
  respectively.
  
  On the other hand, \code{text()} is a bit different.  Its main use is
  to return the body of the book, stored as a single string, with or 
  without its license.  The idea behind the latter being that the user
  may not want to have the terms of the license of the book included
  in the analysis of the book itself.
}
\keyword{Methods}



