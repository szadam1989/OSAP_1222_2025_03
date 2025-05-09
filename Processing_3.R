process_third_table <- function() {
  
  if(MG59 == 1){
    #Személygépkocsi
    #Külföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 4], fixed = TRUE))) #Személygépkocsi belépő külföldi
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 5], fixed = TRUE))) #Személygépkocsi kilépő külföldi
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 2, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "2", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    #Belföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 4], fixed = TRUE))) #Személygépkocsi belépő magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 5], fixed = TRUE))) #Személygépkocsi kilépő magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 1, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "1", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 4], fixed = TRUE))) #Személygépkocsi belépő külföldi + magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 5], fixed = TRUE))) #Személygépkocsi kilépő külföldi + magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, "=", MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, "=", MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    
    #Motorkerékpár
    #Külföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 14], fixed = TRUE))) #Motorkerékpár belépő külföldi
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 15], fixed = TRUE))) #Motorkerékpár kilépő külföldi
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    #Belföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 14], fixed = TRUE))) #Motorkerékpár belépő magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 15], fixed = TRUE))) #Motorkerékpár kilépő magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 14], fixed = TRUE))) #Motorkerékpár belépő külföldi + magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 15], fixed = TRUE))) #Motorkerékpár kilépő külföldi + magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    
    #Tehergépkocsi
    #Külföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 12], fixed = TRUE))) #Tehergépkocsi belépő külföldi
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 13], fixed = TRUE))) #Tehergépkocsi kilépő külföldi
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_6, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_6, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_6, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    #Belföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 12], fixed = TRUE))) #Tehergépkocsi belépő magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 13], fixed = TRUE))) #Tehergépkocsi kilépő magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_6, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_6, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_6, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 12], fixed = TRUE))) #Tehergépkocsi belépő külföldi + magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 13], fixed = TRUE))) #Tehergépkocsi kilépő külföldi + magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_6, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_6, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_6, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    #Busz
    #Külföldi
    Belepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[1, 6], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[1, 8], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[1, 10], fixed = TRUE))), na.rm = TRUE) #Busz belépő külföldi
    
    Kilepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[1, 7], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[1, 9], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[1, 11], fixed = TRUE))), na.rm = TRUE) #Busz kilépő külföldi
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    #Belföldi
    Belepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[2, 6], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[2, 8], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[2, 10], fixed = TRUE))), na.rm = TRUE) #Busz belépő magyar
    
    Kilepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[2, 7], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[2, 9], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[2, 11], fixed = TRUE))), na.rm = TRUE) #Busz kilépő magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    Belepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 6], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[3, 8], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[3, 10], fixed = TRUE))), na.rm = TRUE) #Busz belépő külföldi + magyar
    
    Kilepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 7], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[3, 9], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[3, 11], fixed = TRUE))), na.rm = TRUE) #Busz kilépő külföldi + magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_5, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
  }

  if(MG59 == 2){
    #Külföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 2], fixed = TRUE))) #Vonat belépő külföldi
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 3], fixed = TRUE))) #Vonat kilépő külföldi
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 2, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "2", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "2", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    #Belföldi
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 2], fixed = TRUE))) #Vonat belépő magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 3], fixed = TRUE))) #Vonat kilépő magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, 1, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "1", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "1", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 2], fixed = TRUE))) #Vonat belépő külföldi + magyar
    
    Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 3], fixed = TRUE))) #Vonat kilépő külföldi + magyar
    
    Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
    
    if (isNA_or_Zero(Belepo)){
      cat(paste(TEV, MHO, 2, "=", MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Kilepo)){
      cat(paste(TEV, MHO, 1, "=", MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
    if (isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      cat(paste(TEV, MHO, "=", "=", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
    }
    
  }
  
  
    if(MG59 == 3){
      #hajó
      #Külföldi
      Belepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[1, 16], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[14, 18], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[14, 20], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[14, 22], fixed = TRUE))), na.rm = TRUE) #Hajó belépő külföldi
      
      Kilepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[1, 17], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[14, 19], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[14, 21], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[14, 23], fixed = TRUE))), na.rm = TRUE) #Hajó kilépő külföldi
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 2, MG05, MG60_6, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 2, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "2", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      #Belföldi
      Belepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[2, 16], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[15, 18], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[15, 20], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[15, 22], fixed = TRUE))), na.rm = TRUE) #Hajó belépő magyar
      
      Kilepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[2, 17], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[15, 19], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[15, 21], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[15, 23], fixed = TRUE))), na.rm = TRUE) #Hajó kilépő magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 1, MG05, MG60_6, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 1, MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "1", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      Belepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 16], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[16, 18], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[16, 20], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[16, 22], na.rm = TRUE))), na.rm = TRUE) #Busz belépő külföldi + magyar
      
      Kilepo <- sum(as.integer(gsub("\\s", "", as.character(worksheet_02[3, 17], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[16, 19], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[16, 21], fixed = TRUE))), as.integer(gsub("\\s", "", as.character(worksheet_02[16, 23], na.rm = TRUE))), na.rm = TRUE) #Busz kilépő külföldi + magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, "=", MG05, MG60_6, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, "=", MG05, MG60_5, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "=", MG05, MG60_5, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      
      #Személyhajó
      #Külföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 16], fixed = TRUE))) #Személyhajó belépő külföldi
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 17], fixed = TRUE))) #Személyhajó kilépő külföldi
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 2, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "2", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      #Belföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 16], fixed = TRUE))) #Személyhajó belépő magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 17], fixed = TRUE))) #Személyhajó kilépő magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 1, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "1", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 16], fixed = TRUE))) #Személyhajó belépő külföldi + magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 17], fixed = TRUE))) #Személyhajó kilépő külföldi + magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, "=", MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, "=", MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      #Vontató
      #Külföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 18], fixed = TRUE))) #Vontató belépő külföldi
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 19], fixed = TRUE))) #Vontató kilépő külföldi
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 2, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 2, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "2", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      #Belföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 18], fixed = TRUE))) #Vontató belépő magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 19], fixed = TRUE))) #Vontató kilépő magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 1, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 1, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "1", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 18], fixed = TRUE))) #Vontató belépő külföldi + magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 19], fixed = TRUE))) #Vontató kilépő külföldi + magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, "=", MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, "=", MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "=", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      
      #Uszály
      #Külföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 20], fixed = TRUE))) #Uszály belépő külföldi
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 21], fixed = TRUE))) #Uszály kilépő külföldi
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 2, MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 2, MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "2", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      #Belföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 20], fixed = TRUE))) #Uszály belépő magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 21], fixed = TRUE))) #Uszály kilépő magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 1, MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 1, MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "1", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 20], fixed = TRUE))) #Uszály belépő külföldi + magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 21], fixed = TRUE))) #Uszály kilépő külföldi + magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, "=", MG05, MG60_3, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, "=", MG05, MG60_3, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "=", MG05, MG60_3, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      
      #Csónak
      #Külföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 22], fixed = TRUE))) #Csónak belépő külföldi
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 23], fixed = TRUE))) #Csónak kilépő külföldi
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 2, MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 2, MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "2", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      #Belföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 22], fixed = TRUE))) #Csónak belépő magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 23], fixed = TRUE))) #Csónak kilépő magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 1, MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 1, MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "1", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 22], fixed = TRUE))) #Csónak belépő külföldi + magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 23], fixed = TRUE))) #Csónak kilépő külföldi + magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, "=", MG05, MG60_4, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, "=", MG05, MG60_4, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "=", MG05, MG60_4, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
    }

    if(MG59 == 4){
      
      #Külföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 24], fixed = TRUE))) #Repülő belépő külföld
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 25], fixed = TRUE))) #Repülő kilépő külföld
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 2, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, 2, 2, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 2, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, 1, 2, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "2", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, "=", "2", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      #Belföldi
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 24], fixed = TRUE))) #Repülő belépő magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 25], fixed = TRUE))) #Repülő kilépő magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, 1, MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, 2, 1, MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, 1, MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, 1, 1, MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "1", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, "=", "1", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 24], fixed = TRUE))) #Repülő belépő külföldi + magyar
      
      Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_02[3, 25], fixed = TRUE))) #Repülő kilépő külföldi + magyar
      
      Osszesen <- sum(Belepo, Kilepo, na.rm = TRUE)
      
      if (isNA_or_Zero(Belepo)){
        cat(paste(TEV, MHO, 2, "=", MG05, MG60, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, 2, "=", MG05, MG60_2, Belepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Kilepo)){
        cat(paste(TEV, MHO, 1, "=", MG05, MG60, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, 1, "=", MG05, MG60_2, Kilepo, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
      if (isNA_or_Zero(Osszesen)){
        cat(paste(TEV, MHO, "=", "=", MG05, MG60, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
        cat(paste(TEV, MHO, "=", "=", MG05, MG60_2, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_3, append = TRUE)
      }
      
    }
  
}