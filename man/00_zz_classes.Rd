\name{book-class}
\docType{class}

\alias{book}
\alias{book-class}

\title{Class book}
\description{ An S4 class for storing book text and its metadata. }

\section{Creating Objects}{
  \code{ new('book', url = ..., title = ..., author = ..., 
  header = ..., text = ..., nlines = ..., nwords = ..., 
  language = ..., license = ...)}
}
\section{Slots}{
\describe{
\item{\code{url}:}{url the text came from.}
\item{\code{title}:}{Title of the text.}
\item{\code{author}:}{Author of the text.}
\item{\code{header}:}{Preamble to text inserted by Project Gutenberg.}
\item{\code{text}:}{The actual text corpus.}
\item{\code{nlines}:}{Number of lines of text.}
\item{\code{nwords}:}{Number of words in the text.}
\item{\code{language}:}{The (human) language the text is written in.}
\item{\code{license}:}{The license associated to the text.}
}
}
\section{Details}{
  .
}
\seealso{
  \code{\link{rgutenberg}}
}
\keyword{Classes}
