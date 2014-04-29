nmatches <- function(x, pattern)
{
  ret <- grep(x=x, pattern=pattern, perl=TRUE)
  
  if (length(ret) == 0)
    return( 0 )
  else
    return( ret )
}



get_user_agent <- function(agent.type)
{
  if (agent.type == "common")
  {
    agents <- c(
      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.73.11 (KHTML, like Gecko) Version/7.0.1 Safari/537.73.11",
      "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safari/537.36",
      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safari/537.36",
      "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0",
      "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safari/9537.53"
    )
    
    useragent <- sample(agents, size=1)
  }
  ### FIXME
  else if (agent.type == "random")
  {
    platforms <- c(
      # Linux --- Ubuntu only; sorry, Arch hipsters
      "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:27.0)",
      # Android
      "Mozilla/5.0 (Linux; Android 4.2.2; Full Android on Grouper Build/JDQ39)"
      # 
    )
    
    browsers <- c(
      # Firefox
      "Gecko/20100101 Firefox/27.0",
      # Safari
      "AppleWebKit/537.36 (KHTML, like Gecko) QtWebEngine/0.1 Safari/537.36",
      # Chrome
      "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36"
    )
    
    useragent <- paste(sample(platforms, size=1), sample(browsers, size=1))
  }
  
  
  return( useragent )
}




### FIXME verbose is broken
curl_opts <- function(agent.type="common", verbose=FALSE)
{
  agent.type <- match.arg(tolower(agent.type), c("common", "random"))
  
  useragent <- get_user_agent(agent.type=agent.type)
  
  referer <- "http://www.gutenberg.org/"
  
  opts <- list(verbose=FALSE, followlocation=TRUE, timeout=100, useragent=useragent, referer=referer)
  
  return( opts )
}

