\name{bible}
\alias{bible}

\docType{data}

\title{The King James Bible}

\description{
  The complete text of the King James Bible.
  
  "Thou hypocrite, first cast out the beam out of thine own eye; 
  and then shalt thou see clearly to cast out the mote out of 
  thy brother's eye.",  Matthew 7:5.

}
\format{
  A \code{pg.book} object.
}
\details{
\tabular{ll}{
  Title:    \tab The King James Bible \cr
  Author:   \tab Various \cr
  Language: \tab English \cr
  URL:      \tab \url{http://www.gutenberg.org/cache/epub/10/pg10.txt}
}
  
  To access the full text unmodified from its Project Gutenberg
  source, call \code{text(bible)}.  To remove Project Gutenberg
  insertions (header information, the license, etc.), call
  \code{text(bible, with.license=FALSE)}.
}

