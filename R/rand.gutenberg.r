rgutenberg <- function()
{
  url.rand <- "http://www.gutenberg.org/ebooks/search/?sort_order=random"
  html <- RCurl::getURL(url.rand, followlocation=TRUE, .opts=curl_opts)
  html.parsed <- XML::htmlParse(html, asText=TRUE)
  
  books <- XML::xpathSApply(html.parsed, "//li[@class='booklink']/a[@class='link']/@href")
  book <- sample(books, size=1L)
  
  gut <- gutenberg(book=book)
  
  return( gut )
}



gutenberg <- function(book)
{
  url.book <- paste("http://www.gutenberg.org", book, ".txt.utf-8", sep="")
  text <- readLines(url.book)
  
  start <- "[***] START OF THIS PROJECT GUTENBERG"
  end <- "[***][ ]?END OF THE PROJECT GUTENBERG|[***][ ]?END OF THIS PROJECT GUTENBERG"
  
  line.start <- which(grepl(text, pattern=start))
  line.end <- which(grepl(text, pattern=end))
  
  text <- text[(line.start+1L):(line.end-1L)]
  nlines <- length(text)
  nwords <- sum(sapply(X=text, FUN=function(l) length(unlist(strsplit(x=l, split=" ")))))
  text <- paste(text, collapse="\n")
  
  html <- RCurl::getURL(paste("http://www.gutenberg.org", book, sep=""), followlocation=TRUE, .opts=curl_opts)
  html.parsed <- XML::htmlParse(html, asText=TRUE)
  
  title <- XML::xpathSApply(html.parsed, "//tr/td[@itemprop='headline']", xmlValue)
  title <- gsub(x=title, pattern="\n", replacement="")
  
  author <- XML::xpathSApply(html.parsed, "//a[@itemprop='creator']", xmlValue)
  
  language <- XML::xpathSApply(html.parsed, "//tr[@itemprop='inLanguage']/td", xmlValue)
  
  
  gut <- new("book", url=url.book, title=title, author=author, text=text, nlines=nlines, nwords=nwords, language=language, license=pg.license())
  
  return( gut )
}
