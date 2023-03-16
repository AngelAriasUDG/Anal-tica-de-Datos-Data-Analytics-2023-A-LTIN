#Plantilla para el pre procesado de datos - Datos catregóricos
#Importar el Dataset
Data = read.csv('Data.csv', stringsAsFactors = FALSE)
str(Data)

#Codificar las variables categóricas
Data$Country = factor(Data$Country,
                      levels = c("France", "Spain", "Germany"),
                      labels = c(1,2,3))
Data$Purchased = factor(Data$Purchased,
                        levels = c("No", "Yes"),
                        labels = c(0,1))
str(Data)