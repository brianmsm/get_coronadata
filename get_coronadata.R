get_coronadata <- function(show.na = FALSE) {
  
  if(!"dplyr" %in% rownames(installed.packages())) {
    install.packages("dplyr") 
  } 
  
  if(!"purrr" %in% rownames(installed.packages())) {
    install.packages("purrr") 
  } 
  
  if(!"tibble" %in% rownames(installed.packages())) {
    install.packages("tibble") 
  } 
  
  if(!"tidyr" %in% rownames(installed.packages())) {
    install.packages("tidyr") 
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
  
  if(!"lubridate" %in% rownames(installed.packages())) {
    install.packages("lubridate") 
  } 
  
  `%>%` <- magrittr::`%>%`
  
  # Extract data
  freq_coronavirus <- xml2::read_html("https://www.worldometers.info/coronavirus/") %>% 
    rvest::html_nodes("table") %>% 
    rvest::html_table() %>% 
    purrr::map(~ .x %>% 
                 dplyr::mutate(NewDeaths = as.character(NewDeaths))) %>% 
    dplyr::bind_rows(.id = "Date_extract") %>% 
    tibble::as_tibble() %>% 
    dplyr::select(-`#`) %>% 
    dplyr::filter(`Country,Other` != "")
  
  # Format date 
  freq_coronavirus <- freq_coronavirus %>% 
    dplyr::mutate(
      Date_extract = dplyr::case_when(
        Date_extract == 1 ~ lubridate::ymd(Sys.Date()),
        Date_extract == 2 ~ lubridate::ymd(Sys.Date()) - 1,
        TRUE ~ lubridate::ymd(Sys.Date()) - 2
      )
      # `Reported1st case` = paste0("2020 ", `Reported1st case`, sep = ""),
      # `Reported1st case` = lubridate::ymd(`Reported1st case`)
    ) 
  
  # Format numbers
  freq_coronavirus <- freq_coronavirus %>% 
    dplyr::mutate_at(dplyr::vars(TotalCases:`Tests/1M pop`),
                     ~ stringr::str_remove(., "[+]")) %>% 
    dplyr::mutate_at(dplyr::vars(TotalCases:`1 Testevery X ppl`),
                     ~ stringr::str_replace_all(., ",", "")) 
  
  suppressWarnings( 
    freq_coronavirus <- freq_coronavirus %>% 
      dplyr::mutate_at(dplyr::vars(-c(Date_extract, `Country,Other`,
                                      Continent)),
                       as.numeric)
  )
  
  # Add NA or not
  if(show.na == FALSE) {
    freq_coronavirus <- freq_coronavirus %>% 
      dplyr::mutate_at(dplyr::vars(-c(Date_extract, `Country,Other`,
                                      Continent)), 
                       ~ replace(., is.na(.), 0)) 
    return(freq_coronavirus)
  } else {
    return(freq_coronavirus)
  }
}
