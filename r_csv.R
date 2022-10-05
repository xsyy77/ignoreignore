library(rvest)

urlb <- "https://en.wikipedia.org/wiki/Comma-separated_values"
xpath <- '//*[@id="mw-content-text"]/div[1]/table[3]'
  
  nodes <- html_nodes(    
    read_html(urlb), xpath=xpath)

tables <- html_table(nodes)
restab <- tables[[1]]
head(restab)

