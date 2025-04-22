DatabaseTable_1 <- "GADC0_98AEV_V01.txt"
DatabaseTable_2 <- "GADD0_98AEV_V01.txt"
DatabaseTable_3 <- "GADF2_04AEV_V01.txt"
DatabaseTable_4 <- "GADF3_04AEV_V01.txt"

library("RODBC")
channelOracle <- odbcDriverConnect(paste("DRIVER={Oracle in OraClient18Home1};DBQ=EMERALD.KSH.HU;UID=", Sys.getenv("userid"), ";PWD=", Sys.getenv("pwd")))

#1. tábla
firstData <- file(description = paste(getwd(), "/", DatabaseTable_1, sep = ""), open = "r")
line <- readLines(con = firstData)
df_data <- data.frame()

for (i in 1:length(line)){
  values <- strsplit(x = line[i], split = ";");
  df <- data.frame(matrix(unlist(values), nrow = 1), stringsAsFactors = FALSE)
  df_data <- rbind(df_data, df)
}

sqlSave(channel = channelOracle, dat = df_data, tablename = "GA.GADC0_98AEV_V01_TESZT", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)
close(firstData)




#2. tábla
secondData <- file(description = paste(getwd(), "/", DatabaseTable_2, sep = ""), open = "r")
line <- readLines(con = secondData)
df_data <- data.frame()

for (i in 1:length(line)){
  values <- strsplit(x = line[i], split = ";");
  df <- data.frame(matrix(unlist(values), nrow = 1),stringsAsFactors = FALSE)
  df_data <- rbind(df_data, df)
}

sqlSave(channel = channelOracle, dat = df_data, tablename = "GA.GADD0_98AEV_V01_TESZT", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)
close(secondData)



#3. tábla
thirdData <- file(description = paste(getwd(), "/", DatabaseTable_3, sep = ""), open = "r")
line <- readLines(con = thirdData)
df_data <- data.frame()

for (i in 1:length(line)){
  values <- strsplit(x = line[i], split = ";");
  df <- data.frame(matrix(unlist(values), nrow = 1), stringsAsFactors = FALSE)
  df_data <- rbind(df_data, df)
}

sqlSave(channel = channelOracle, dat = df_data, tablename = "GA.GADF2_04AEV_V01_TESZT", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)
close(thirdData)


#4. tábla
fourthData <- file(description = paste(getwd(), "/", DatabaseTable_4, sep = ""), open = "r")
line <- readLines(con = fourthData)
df_data <- data.frame()

for (i in 1:length(line)){
  values <- strsplit(x = line[i], split = ";");
  df <- data.frame(matrix(unlist(values), nrow = 1), stringsAsFactors = FALSE)
  df_data <- rbind(df_data, df)
}

sqlSave(channel = channelOracle, dat = df_data, tablename = "GA.GADF3_04AEV_V01_TESZT", append = TRUE, rownames = FALSE, colnames = FALSE, fast = FALSE)
close(fourthData)



odbcClose(channelOracle)
