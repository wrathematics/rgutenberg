\name{book-class}
\docType{class}

\alias{book}
\alias{book-class}

\title{Class book}
\description{ An S4 class for storing book data and some of its 
  metadata. }

\section{Creating Objects}{
  \code{ new('book', text = ..., title = ..., author = ..., 
  language = ...,)}
}
\section{Slots}{
\describe{
\item{\code{text}:}{The actual text corpus.}
\item{\code{title}:}{Title of the text.}
\item{\code{author}:}{Author of the text.}
\item{\code{language}:}{The (human) language the text is written in.}
}
}
\section{Details}{
  The specification for a book object is as follows:
  
  * The slot \code{text} consists of the corpus itself, stored as character
    vector.  This should be the equivalent of calling \code{readLines()} on
    an unformatted text representation of the book.
}
\seealso{
  \code{\link{pgbook-class}}
}
\keyword{Classes}
