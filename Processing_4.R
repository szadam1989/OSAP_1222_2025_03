process_fourth_table <- function() {
  
  if(MG59 == 1){
    
    Kulfold <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 6], fixed = TRUE))) #Helyi busz belépő külföldi
    
    Magyar <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 6], fixed = TRUE))) #Helyi busz belépő magyar
    
    Osszesen <- sum(Kulfold, Magyar, na.rm = TRUE)
    
    if(isNA_or_Zero(Kulfold)){
      cat(paste(TEV, MHO, "=", 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, 2, MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Magyar)){
      cat(paste(TEV, MHO, "=", 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, 2, MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", 2, MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    Kulfold <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 7], fixed = TRUE))) #Helyi busz kilépő külföldi
    
    Magyar <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 7], fixed = TRUE))) #Helyi busz kilépő magyar
    
    Osszesen <- sum(Kulfold, Magyar, na.rm = TRUE)
    
    if(isNA_or_Zero(Kulfold)){
      cat(paste(TEV, MHO, "=", 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, 2, MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Magyar)){
      cat(paste(TEV, MHO, "=", 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, 2, MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", 2, MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    Kulfold <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 8], fixed = TRUE))) #Távolsági busz belépő külföldi
    
    Magyar <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 8], fixed = TRUE))) #Távolsági busz belépő magyar
    
    Osszesen <- sum(Kulfold, Magyar, na.rm = TRUE)
    
    if(isNA_or_Zero(Kulfold)){
      cat(paste(TEV, MHO, "=", 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, 1, MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Magyar)){
      cat(paste(TEV, MHO, "=", 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, 1, MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", 1, MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    Kulfold <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 9], fixed = TRUE))) #Távolsági busz kilépő külföldi
    
    Magyar <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 9], fixed = TRUE))) #Távolsági busz kilépő magyar
    
    Osszesen <- sum(Kulfold, Magyar, na.rm = TRUE)
    
    if(isNA_or_Zero(Kulfold)){
      cat(paste(TEV, MHO, "=", 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, 1, MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Magyar)){
      cat(paste(TEV, MHO, "=", 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, 1, MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", 1, MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    Kulfold <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 10], fixed = TRUE))) #Charter busz belépő külföldi
    
    Magyar <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 10], fixed = TRUE))) #Charter busz belépő magyar
    
    Osszesen <- sum(Kulfold, Magyar, na.rm = TRUE)
    
    if(isNA_or_Zero(Kulfold)){
      cat(paste(TEV, MHO, "=", 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 2, 3, MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Magyar)){
      cat(paste(TEV, MHO, "=", 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, 1, 3, MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 2, "=", 3, MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    Kulfold <- as.integer(gsub("\\s", "", as.character(worksheet_02[1, 11], fixed = TRUE))) #Charter busz kilépő külföld
    
    Magyar <- as.integer(gsub("\\s", "", as.character(worksheet_02[2, 11], fixed = TRUE))) #Charter busz kilépő magyar
    
    Osszesen <- sum(Kulfold, Magyar, na.rm = TRUE)
    
    if(isNA_or_Zero(Kulfold)){
      cat(paste(TEV, MHO, "=", 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, "=", MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 2, 3, MG05, Kulfold, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Magyar)){
      cat(paste(TEV, MHO, "=", 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, "=", MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, 1, 3, MG05, Magyar, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
    
    if(isNA_or_Zero(Osszesen)){
      cat(paste(TEV, MHO, "=", "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", "=", MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
      cat(paste(TEV, MHO, 1, "=", 3, MG05, Osszesen, sep = ";"), sep = "\n", file = DatabaseTable_4, append = TRUE)
    }
  } 
  
}