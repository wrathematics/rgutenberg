\name{mariner}
\alias{mariner}

\docType{data}

\title{The Rime of the Ancient Mariner}

\description{
  The complete text of Samuel Taylor Coleridge's "Rime of the 
  Ancient Mariner", my favorite poem.
  
  "Day after day, day after day,
  We stuck, nor breath nor motion;
  As idle as a painted ship
  Upon a painted ocean."
  -- Coleridge
  
  "Sailing on and on and North across the sea
  Sailing on and on and North 'till all is calm" 
  -- Bruce Dickinson, Iron Maiden.
}
\format{
  A \code{pg.book} object.
}
\details{
\tabular{ll}{
  Title:    \tab The Rime of the Ancient Mariner \cr
  Author:   \tab Samuel Taylor Coleridge \cr
  Language: \tab English \cr
  URL:      \tab \url{http://www.gutenberg.org/ebooks/151.txt.utf-8}
}
  
  To access the full text unmodified from its Project Gutenberg
  source, call \code{text(mariner)}.  To remove Project Gutenberg
  insertions (header information, the license, etc.), call
  \code{text(mariner, with.license=FALSE)}.
}

