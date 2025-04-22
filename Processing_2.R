process_second_table <- function() {
  
  if(MG59 == 1){
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 4], fixed = TRUE))) #Személygépkocsi belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 5], fixed = TRUE))) #Személygépkocsi kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Személygépkocsi belépő + kilépő
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    Belepo_HELYI <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 6], fixed = TRUE))) 
    Belepo_TAVOLSAGI <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 8], fixed = TRUE)))
    Belepo_CHARTER <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 10], fixed = TRUE))) 
    #Helyi, távolsági és charter buszok száma belépő
    
    Belepo <- sum(Belepo_HELYI, Belepo_TAVOLSAGI, Belepo_CHARTER, na.rm = TRUE)
    
    Kilepo_HELYI <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 7], fixed = TRUE)))
    Kilepo_TAVOLSAGI <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 9], fixed = TRUE)))
    Kilepo_CHARTER <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 11], fixed = TRUE))) 
    #Helyi, távolsági és charter buszok száma kilépő
    
    Kilepo <- sum(Kilepo_HELYI, Kilepo_TAVOLSAGI, Kilepo_CHARTER, na.rm = TRUE)
    
    
    #Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 6], fixed = TRUE))) + as.integer(gsub("\\s", "", as.character(worksheet_02[3, 8], fixed = TRUE))) + as.integer(gsub("\\s", "", as.character(worksheet_02[3, 10], fixed = TRUE))) #Helyi, távolsági és charter buszok száma belépő
    
    #Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 7], fixed = TRUE))) + as.integer(gsub("\\s", "", as.character(worksheet_02[3, 9], fixed = TRUE))) + as.integer(gsub("\\s", "", as.character(worksheet_02[3, 11], fixed = TRUE))) #Helyi, távolsági és charter buszok száma kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Buszok belépő + kilépő
 #   print(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 6], fixed = TRUE))))
#    print(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 8], fixed = TRUE))))
 #   print(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 10], fixed = TRUE))))
  #  print(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 7], fixed = TRUE))))
  #  print(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 9], fixed = TRUE))))
  #  print(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 11], fixed = TRUE))))
  #  print(Belepo)
  #  print(Kilepo)
  #  print(Osszesen)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    
    
    
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 12], fixed = TRUE))) #Tehergépkocsi belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 13], fixed = TRUE))) #Tehergépkocsi kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Tehergépkocsi belépő + kilépő
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 14], fixed = TRUE))) #Motorkerékpár belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 15], fixed = TRUE))) #Motorkerékpár kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Motorkerékpár belépő + kilépő
   # print("Motor")
  #  print(Belepo)
  #  print(Kilepo)
  #  print(Osszesen)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
  }
  
  if(MG59 == 2){
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 2], fixed = TRUE))) #Vonat belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 3], fixed = TRUE))) #Vonat kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Vonat belépő + kilépő
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
  }
  
  
  
  if(MG59 == 3){
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 16], fixed = TRUE))) #Személyhajó belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 17], fixed = TRUE))) #Személyhajó kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Személyhajó belépő + kilépő
    
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    
    
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 18], fixed = TRUE))) #Vontató belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 19], fixed = TRUE))) #Vontató kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Vontató belépő + kilépő
    
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 20], fixed = TRUE))) #Uszály belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 21], fixed = TRUE))) #Uszály kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Uszály belépő + kilépő
    
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 22], fixed = TRUE))) #Csónak belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 23], fixed = TRUE))) #Csónak kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Csónak belépő + kilépő
    
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
  }
  
  
  if(MG59 == 4){
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 24], fixed = TRUE))) #Repülő belépő
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 25], fixed = TRUE))) #Repülő kilépő
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE) #Repülő belépő + kilépő
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_2, append = TRUE)
    }
    
  }
  
}