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

#Az XLSX állománnyá történő konvertálást másként oldom meg
#library("rio")
#help("rio")

#proc_filenames <- list.files(path = paste(getwd(), "/Excel_Files/", sep = ""), full.names = TRUE) #
#proc_filenames_short <- list.files(path = paste(getwd(), "/Excel_Files/", sep = "")) #

#for(k in 1:length(proc_filenames)){
  
#  if (!grepl("xlsx", proc_filenames[k])){
#    x <- import(proc_filenames[k])
#    convert(x, paste(proc_filenames_short[k], "x", sep = ""))
#  }

#}
