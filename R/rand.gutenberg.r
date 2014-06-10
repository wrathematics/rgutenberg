check.ban <- function(html.parsed)
{
  msg <- "You have used Project Gutenberg quite a lot today or clicked through it really fast. To make sure you are human, we ask you to resolve this captcha:"
  test <- XML::xpathSApply(html.parsed, "//div[@id='dialog' and @title='Are you human?']/p", xmlValue)
  
  if (isTRUE(test == msg))
    stop("You have used this utility too much in a short period of time.  Wait a few hours and try again.")
}



rgutenberg <- function()
{
  url.rand <- "http://www.gutenberg.org/ebooks/search/?sort_order=random"
  html <- RCurl::getURL(url.rand, followlocation=TRUE, .opts=curl_opts)
  html.parsed <- XML::htmlParse(html, asText=TRUE)
  
  check.ban(html.parsed=html.parsed)
  
  books <- XML::xpathSApply(html.parsed, "//li[@class='booklink']/a[@class='link']/@href")
  book <- sample(books, size=1L)
  
  url.book <- paste("http://www.gutenberg.org", book, ".txt.utf-8", sep="")
  
  gut <- gutenbook(url=url.book)
  
  return( gut )
}




book.metadata <- function(text, check)
{
  meta.ind <- grep(x=text, pattern=check)
  if (length(meta.ind) == 0)
    meta <- "Unknown"
  else
    meta <- sub(x=text[meta.ind[1L]], pattern=check, replacement="")
  
  return( meta )
}


gutenbook <- function(url)
{
  if (missing(url))
    stop("You must supply a valid url for this method; otherwise use rgutenberg()")
  
  text <- readLines(url)
  
  start <- "[***] START OF THIS PROJECT GUTENBERG"
  end <- "[***][ ]?END OF THE PROJECT GUTENBERG|[***][ ]?END OF THIS PROJECT GUTENBERG"
  
  line.start <- which(grepl(text, pattern=start))
  line.end <- which(grepl(text, pattern=end))
  
  
  title <- book.metadata(text=text, check="Title: ")
  author <- book.metadata(text=text, check="Author: ")
  language <- book.metadata(text=text, check="Language: ")
  
  header <- text[1L:line.start]
  text <- text[(line.start+1L):(line.end-1L)]
  
#  book <- sub(x=url, pattern="^(.*\\/)", replacement="")
#  book <- sub(x=book, pattern=".txt.utf-8", replacement="")
#  
#  html <- RCurl::getURL(paste("http://www.gutenberg.org/ebooks/", book, sep=""), followlocation=TRUE, .opts=curl_opts)
# 
#  html.parsed <- XML::htmlParse(html, asText=TRUE)
#  
#  title <- XML::xpathSApply(html.parsed, "//tr/td[@itemprop='headline']", xmlValue)
#  title <- gsub(x=title, pattern="\n", replacement="")
#  
#  author <- XML::xpathSApply(html.parsed, "//a[@itemprop='creator']", xmlValue)
#  
#  language <- XML::xpathSApply(html.parsed, "//tr[@itemprop='inLanguage']/td", xmlValue)
  
  
  
  gut <- new("pgbook", url=url, title=title, author=author, header=header, text=text, language=language, license=pg.license())
  
  return( gut )
}


