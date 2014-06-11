\name{pgbook-class}
\docType{class}

\alias{pgbook}
\alias{pgbook-class}

\title{Class pgbook}
\description{ An S4 class for storing Project Gutenberg book data 
  and some of its metadata. }

\section{Creating Objects}{
  \code{ new('pgbook', url = ..., title = ..., author = ..., 
  header = ..., text = ..., nlines = ..., nwords = ..., 
  language = ..., license = ...)}
}
\section{Slots}{
\describe{
\item{\code{url}:}{url the text came from.}
\item{\code{header}:}{Preamble to text inserted by Project Gutenberg.}
\item{\code{license}:}{The license associated to the text.}
}
}
\section{Details}{
  The specification for a book object is as follows:
  
  * The slot \code{text} consists of the corpus itself, stored as character
    vector.  This should be the equivalent of calling \code{readLines()} on
    an unformatted text representation of the book.
}
\seealso{
  \code{\link{book-class}, \link{rgutenberg}}
}
\keyword{Classes}
