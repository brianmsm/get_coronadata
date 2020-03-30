get_coronadata <- function(show.na = FALSE) {
  
  if(!"tidyverse" %in% rownames(installed.packages())) {
    install.packages("dplyr") 
  } 
  
  if(!"tibble" %in% rownames(installed.packages())) {
    install.packages("tibble") 
  } 
  
  if(!"stringr" %in% rownames(installed.packages())) {
    install.packages("stringr") 
  } 
  
  if(!"magrittr" %in% rownames(installed.packages())) {
    install.packages("magrittr") 
  } 
  
  if(!"rvest" %in% rownames(installed.packages())) {
    install.packages("rvest") 
  } 
  
  if(!"xml2" %in% rownames(installed.packages())) {
    install.packages("xml2") 
  } 
  
  `%>%` <- magrittr::`%>%`
  
  freq_coronavirus <- xml2::read_html("https://www.worldometers.info/coronavirus/") %>% 
    rvest::html_nodes("table") %>% 
    rvest::html_table() %>% 
    magrittr::extract2(1)
  
  freq_coronavirus <- freq_coronavirus %>% 
    dplyr::mutate(NewCases = stringr::str_remove(NewCases, "[+]")) %>% 
    dplyr::mutate_at(dplyr::vars(TotalCases:TotalDeaths, 
                   TotalRecovered:`Serious,Critical`),
              ~ stringr::str_replace(., ",", "")) %>% 
    dplyr::mutate_at(dplyr::vars(-`Country,Other`), as.numeric) %>% 
    tibble::as_tibble()
  
  if(show.na == FALSE) {
    freq_coronavirus <- freq_coronavirus %>% 
      dplyr::mutate_all(~ replace(., is.na(.), 0)) 
    return(freq_coronavirus)
  } else {
    return(freq_coronavirus)
  }
}
