install.packages("xml2", repos = "http://cran.us.r-project.org")
install.packages("rvest", repos = "http://cran.us.r-project.org")

library(xml2)
library(rvest)
webpage_url <- "http://www.tdcj.state.tx.us/death_row/dr_executed_offenders.html"
webpage <- xml2::read_html(webpage_url)
ExOffndrsRaw <- rvest::html_table(webpage)[[1]] %>% 
  tibble::as_tibble(.name_repair = "unique") # repair the repeated columns
ExOffndrsRaw %>% dplyr::glimpse(45)

print("hello ") 


