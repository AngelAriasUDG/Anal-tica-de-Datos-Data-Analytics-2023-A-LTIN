#Plantilla para el pre procesado de Datos
#Importar el dataset
#dataset = dataset[, 2:3]
Data = read.csv('Data.csv')

#Dividir los datos en conjunto de entrenamiento y conjunto test
#install.packages("caTools")
library(caTools)
set.seed(123)
split = sample.split(Data$Purchased,SplitRatio = 0.8)
traning_set = subset(Data, split == TRUE)
testing_set = subset(Data, split == FALSE)
