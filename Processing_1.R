#Külföld
process_first_table_Abroad <- function() {
#View(proc_01)
  for(i in 1:nrow(proc_01)){
    
    MG02 <- paste(proc_01[i, 2], "Hiányzik", sep = "")
    MG02 <- getCountryCode_MG02(proc_01[i, 1]) #Országkód meghatározása
    
    Belepo <- as.integer(gsub("\\s", "", as.character(proc_01[i, 3], fixed = TRUE))) #Belépő állampolgárok száma
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(proc_01[i, 4], fixed = TRUE))) #Kilépő állampolgárok száma
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG59, MG05, MG02, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_1, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG59, MG05, MG02, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_1, append = TRUE)
    }
    
  }
}

#Magyarország
process_first_table_Hungary <- function() {
 
  MG02 <- paste(Hungary_Name, "Hiányzik", sep = "")
  MG02 <- getCountryCode_MG02(Hungary_MG94) #Országkód meghatározása
  
  
  if (isNA_or_Zero(Hungary_Belepo)){
    cat(paste(TEV, MHO, 2, MG59, MG05, MG02, Hungary_Belepo, sep = ";"), sep = "\n", file = DatabaseTable_1, append = TRUE)
  }
  
  if (isNA_or_Zero(Hungary_Kilepo)){
    cat(paste(TEV, MHO, 1, MG59, MG05, MG02, Hungary_Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_1, append = TRUE)
  }
  
}