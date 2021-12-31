#Integrantes:
#Sumare Ussca Josue Gabriel
#Gutierrez Arratia Ronald Romario
if(!require("AER")) {install.packages("AER")}
data(package="AER")
library(AER)
data("CPS1985")
dim(CPS1985)
names(CPS1985)
attach(CPS1985)   # acceder directamente a las variables (columnas)
p<-hist(wage,
        breaks = 20,   
        main = "Distribución del Salario (dólares por hora)", 
        freq = FALSE,                  # frecuencias relativas (en tanto por uno)
        xlab = "Salario",                                          
        ylab = "Frecuencia relativa (en tanto por uno)", 
        xlim = c(0,50),
        ylim =c (0,0.15),              # cambiamos rango de valores del eje y 
        col = "blue",
        border = "white"
)
text(p$mids,p$counts,labels=p$counts, adj=c(0.5, -0.5), cex=.5)