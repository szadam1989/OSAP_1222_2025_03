isNA_or_Zero <- function(number) {
  
  if (!is.na(number)){
    if (number != 0){
      return(TRUE)
    }
  }
  
  return(FALSE)

}

if_file_exists_remove <- function(filename) {
  
  if (file.exists(filename)){
    file.remove(filename)
  }
  
}

getCountryCode_MG02 <- function(CountryCodeMG94){
  
  for(j in 3:nrow(worksheet_MG02)){
    if (worksheet_MG02[j, 1] == CountryCodeMG94){
      MG02 <- as.integer(as.character(worksheet_MG02[j, 2]))
      break
    }
  }
  
  return(MG02)

}

