#Külföld
process_first_worksheet_for_Modszertan <- function() {
  
  for(sor_1 in 1:nrow(proc_01)){
    
    Belepo <- as.integer(gsub("\\s", "", as.character(proc_01[sor_1, 3], fixed = TRUE))) #Belépő állampolgárok száma
    
    if(is.na(Belepo)){
      Belepo <- ""
    }
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(proc_01[sor_1, 4], fixed = TRUE))) #Kilépő állampolgárok száma
    
    if(is.na(Kilepo)){
      Kilepo <- ""
    }
    
    MG94 <- proc_01[sor_1, 1] #Országkód
    
    cat(paste(TEV, MHO, MG05, MG94, Belepo, Kilepo, Kilepo, Belepo, sep = ";"), sep = "\n", file = ExcelFile_1, append = TRUE)
    
  }
  
}

#Magyarország
process_first_worksheet_Hungary_for_Modszertan <- function() {
    
    MG94 <- Hungary_MG94 #Országkód
    
    if(is.na(Hungary_Belepo)){
      Hungary_Belepo <- ""
    }
    
    if(is.na(Hungary_Kilepo)){
      Hungary_Kilepo <- ""
    }
    
    cat(paste(TEV, MHO, MG05, MG94, Hungary_Belepo, Hungary_Kilepo, Hungary_Kilepo, Hungary_Belepo, sep = ";"), sep = "\n", file = ExcelFile_1, append = TRUE)
    
}