library("openxlsx")
source("Functions.R")
source("Processing_1.R")
source("Processing_2.R")
source("Processing_3.R")
source("Processing_4.R")
source("Processing_Modszertan_Szemely_1.R")
source("Processing_Modszertan_Jarmu_2.R")

worksheet_MG02 <- read.xlsx("Ország kódok G02 G94 uj_atadashoz.xlsx", sheet = "orszag")

#Elkészítendő fáljlok
DatabaseTable_1 <- "GADC0_98AEV_V01.txt"
DatabaseTable_2 <- "GADD0_98AEV_V01.txt"
DatabaseTable_3 <- "GADF2_04AEV_V01.txt"
DatabaseTable_4 <- "GADF3_04AEV_V01.txt"

#Elkészítendő fájlok felülírása
if_file_exists_remove(DatabaseTable_1)
if_file_exists_remove(DatabaseTable_2)
if_file_exists_remove(DatabaseTable_3)
if_file_exists_remove(DatabaseTable_4)

proc_filenames <- list.files(path = paste(getwd(), "/Excel_Files/", sep = ""))

for(k in 1:length(proc_filenames)){
  
  headline <- read.xlsx(paste(getwd(), "/Excel_Files/", proc_filenames[k], sep = ""), sheet = "1222_01", startRow = 2, colNames = FALSE)
  worksheet_01 <- read.xlsx(paste(getwd(), "/Excel_Files/", proc_filenames[k], sep = ""), sheet = "1222_01", startRow = 9, colNames = TRUE)
  worksheet_02 <- read.xlsx(paste(getwd(), "/Excel_Files/", proc_filenames[k], sep = ""), sheet = "1222_02", startRow = 14, colNames = TRUE)
  print(paste("Oszlopok száma:", ncol(worksheet_01), "Sorszám:", k, "Név:", proc_filenames[k], sep = " "))
 # View(worksheet_01)
  if(ncol(worksheet_01) == 8){
    
    Hungary_Name <- worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 2] #Magyarország neve
    Hungary_MG94 <- worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 1] #Magyarország G94-es nomenklatúra szerinti kódja
    Hungary_Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 7], fixed = TRUE))) #Belépő magyarok száma
    Hungary_Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 8], fixed = TRUE))) #Kilépő magyarok száma
    
  }else if(ncol(worksheet_01) == 7){
    
    Hungary_Name <- worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 2] #Magyarország neve
    Hungary_MG94 <- worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 1] #Magyarország G94-es nomenklatúra szerinti kódja
    Hungary_Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 6], fixed = TRUE))) #Belépő magyarok száma
    Hungary_Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 7], fixed = TRUE))) #Kilépő magyarok száma

  }else if(ncol(worksheet_01) == 9){
    
    Hungary_Name <- worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 2] #Magyarország neve
    Hungary_MG94 <- worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 1] #Magyarország G94-es nomenklatúra szerinti kódja
    Hungary_Belepo <- as.integer(gsub("\\s", "", as.character(worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 8], fixed = TRUE))) #Belépő magyarok száma
    Hungary_Kilepo <- as.integer(gsub("\\s", "", as.character(worksheet_01[is.na(worksheet_01$Megnevezése) == FALSE & worksheet_01$Megnevezése == "Magyarország", 9], fixed = TRUE))) #Kilépő magyarok száma
    
  }
  
  if(is.na(Hungary_Name) == TRUE){
    
    print(paste("Nem találtam meg Magyarországot!", ncol(worksheet_01), "Sorszám:", k, "Név:", proc_filenames[k], sep = " "))
    
  }
  
  TEV <- as.integer(as.character(headline[1, 3])) #év
  MHO <- as.character(headline[1, 6]) #hónap
  MG05 <- as.integer(as.character(headline[2, 9])) #Határátkelő kódja

  if(k == 1){
    ExcelFile_1 <- paste("sz_", TEV, MHO, ".txt", sep = "")
    ExcelFile_2 <- paste("jm_", TEV, MHO, ".txt", sep = "")
    
    if_file_exists_remove(ExcelFile_1)
    if_file_exists_remove(ExcelFile_2)
  
    cat(paste("tev",	"mho",	"hat",	"ok3",	"r01",	"r02",	"kilep",	"belep", sep = ";"), sep = "\n", file = ExcelFile_1, append = TRUE)
    cat(paste("EV",	"MHO",	"hat",	"honos",	"R1_BE",	"R2_KI",	"R3_BE",	"R4_KI",	"R5_BE",	"R6_KI",	"R7_BE",	"R8_KI",	"R9_BE",	"R10_KI",	"R11_BE",	"R12_KI",	"R13_BE",	"R14_KI",	"R15_be",	"R16_ki",	"R17_be",	"R18_ki",	"R19_be",	"R20_ki",	"R21_be",	"R22_ki",	"R23_be",	"R24_ki",	"R25", sep = ";"), sep = "\n", file = ExcelFile_2, append = TRUE)
  }
  
  #Határátkelő jellege és Jármű nemek
  if (grepl("közút", headline[2, 3]) || grepl("pálya", headline[2, 3])){
    MG59 <- 1
    MG60 <- 111
    MG60_2 <- 112
    MG60_3 <- 121
    MG60_4 <- 113
    MG60_5 <- "11="
    MG60_6 <- "12="
  }
  if (grepl("vasút", headline[2, 3])){
    MG59 <- 2
    MG60 <- 211
    MG60_2 <- "21="
    MG60_3 <- "12=" #Miért nem 21=?
  }
  if (grepl("hajó", headline[2, 3])){
    MG59 <- 3
    MG60 <- 411
    MG60_2 <- 412
    MG60_3 <- 413
    MG60_4 <- 414
    MG60_5 <- "41="
    MG60_6 <- "4=="
  }
  if (grepl("légi", headline[2, 3])){
    MG59 <- 4
    MG60 <- 311
    MG60_2 <- "31="
  }
  
  
  for(row in 1:nrow(worksheet_01)){
    
    if(worksheet_01[row, 1] == "Külföldi összesen"){
      
      break
      
    }
    
  }
  
  if(row != 1){
    
    colnames(worksheet_01) = c("Országkód", "Országnév", "Belépő", "Kilépő", "Országkód", "Országnév", "Belépő", "Kilépő")
    
    rbind(worksheet_01[c(1:(row-1)), c(1, 2, 3, 4)], worksheet_01[c(1:(row-1)), c(5, 6, 7, 8)])
    
    proc_01 <- data.frame(rbind(worksheet_01[c(1:(row-1)), c(1, 2, 3, 4)], worksheet_01[c(1:(row-1)), c(5, 6, 7, 8)]))
    
  }else{
    
    proc_01 <- worksheet_01
    
  }
  proc_01 <- proc_01[is.na(proc_01$Országnév) == FALSE, ]

  
  #1. tábla feltöltése
  
  if (nrow(proc_01) != 0){
    
    process_first_table_Abroad()
    
  }
  
  process_first_table_Hungary()
    
  #2. tábla feltöltése
  
  process_second_table()
    
      
  #3. tábla feltöltése
    
  process_third_table()
    
    
  #4. tábla feltöltése
  process_fourth_table()
  
  #5. tábla feltöltése
  if (nrow(proc_01) != 0){
    process_first_worksheet_for_Modszertan()
  }
  
  process_first_worksheet_Hungary_for_Modszertan()
  
  #6. tábla feltöltése
  process_second_worksheet_for_Modszertan()

  
}
