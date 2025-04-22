process_second_worksheet_for_Modszertan <- function() {
  
  tipus <- 1 #Külföld, Belföld, Összesen
  
  for(sor_2 in 1:3){
    R1_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 2], fixed = TRUE)))
    if(is.na(R1_BE)){
      R1_BE = ""
    }
    
    R2_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 3], fixed = TRUE)))
    if(is.na(R2_KI)){
      R2_KI = ""
    }
    
    R3_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 4], fixed = TRUE)))
    if(is.na(R3_BE)){
      R3_BE = ""
    }
    
    R4_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 5], fixed = TRUE))) 
    if(is.na(R4_KI)){
      R4_KI = ""
    }
    
    R5_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 6], fixed = TRUE)))
    if(is.na(R5_BE)){
      R5_BE = ""
    }
    
    R6_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 7], fixed = TRUE)))
    if(is.na(R6_KI)){
      R6_KI = ""
    }
    
    R7_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 8], fixed = TRUE)))
    if(is.na(R7_BE)){
      R7_BE = ""
    }
    
    R8_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 9], fixed = TRUE)))
    if(is.na(R8_KI)){
      R8_KI = ""
    }
    
    R9_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 10], fixed = TRUE))) 
    if(is.na(R9_BE)){
      R9_BE = ""
    }
    
    R10_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 11], fixed = TRUE)))
    if(is.na(R10_KI)){
      R10_KI = ""
    }
    
    R11_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 12], fixed = TRUE))) 
    if(is.na(R11_BE)){
      R11_BE = ""
    }
    
    R12_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 13], fixed = TRUE))) 
    if(is.na(R12_KI)){
      R12_KI = ""
    }
    
    R13_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 14], fixed = TRUE))) 
    if(is.na(R13_BE)){
      R13_BE = ""
    }
    
    R14_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 15], fixed = TRUE)))
    if(is.na(R14_KI)){
      R14_KI = ""
    }
    
    R15_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 16], fixed = TRUE)))
    if(is.na(R15_BE)){
      R15_BE = ""
    }
    
    R16_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 17], fixed = TRUE)))
    if(is.na(R16_KI)){
      R16_KI = ""
    }
    
    R17_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 18], fixed = TRUE)))
    if(is.na(R17_BE)){
      R17_BE = ""
    }
    
    R18_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 19], fixed = TRUE)))
    if(is.na(R18_KI)){
      R18_KI = ""
    }
    
    R19_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 20], fixed = TRUE)))
    if(is.na(R19_BE)){
      R19_BE = ""
    }
    
    R20_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 21], fixed = TRUE)))
    if(is.na(R20_KI)){
      R20_KI = ""
    }
    
    R21_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 22], fixed = TRUE)))
    if(is.na(R21_BE)){
      R21_BE = ""
    }
    
    R22_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 23], fixed = TRUE)))
    if(is.na(R22_KI)){
      R22_KI = ""
    }
    
    R23_BE <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 24], fixed = TRUE)))
    if(is.na(R23_BE)){
      R23_BE = ""
    }
    
    R24_KI <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 25], fixed = TRUE)))
    if(is.na(R24_KI)){
      R24_KI = ""
    }
    
    R25 <- as.integer(gsub("\\s", "", as.character(worksheet_02[sor_2, 26], fixed = TRUE)))
    if(is.na(R25)){
      R25 = ""
    }
    
    cat(paste(TEV, MHO, MG05, tipus, R1_BE, R2_KI, R3_BE, R4_KI, R5_BE, R6_KI, R7_BE, R8_KI, R9_BE, R10_KI,
              R11_BE, R12_KI, R13_BE, R14_KI, R15_BE, R16_KI, R17_BE, R18_KI, R19_BE, R20_KI, R21_BE, R22_KI,
              R23_BE, R24_KI, R25,
              sep = ";"), sep = "\n", file = ExcelFile_2, append = TRUE)
    
    tipus <- tipus + 1
  }

 
}