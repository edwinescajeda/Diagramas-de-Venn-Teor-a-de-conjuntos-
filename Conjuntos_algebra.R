#Instalación de paquete
install.packages(ggVennDiagram)

cran_packages <- c("VennDiagram","colorfulVennPlot","gplots","venn",
                   "nVennR", "eulerr","venneuler","ggVennDiagram")
xfun::pkg_load2(cran_packages)

if (!requireNamespace("ggvenn")){
        remotes::install_github("yanlinlin82/ggvenn")
}

#Carga de librería
library(ggVennDiagram)

#Definición de conjuntos mixtos (extendidos o interpretados), se coloca una L al final de cada elemento no entero para definirlo como integer

x<-list(A=1:10, B=3:12, C= c(2L,3L,5L,8L,7L,9L,12L,13L,14L));x

#Impresión de diagrama de Venn y Euler

VennX <- ggVennDiagram(x[1:3]); VennX

EulerX <-venn(x)
        plot(EulerX)

#Ejemplo con vectores interpretados

P <- list(A=1:360, B=1:280, C=1:150);

VennP <- ggVennDiagram(P[1:3]); VennP

EulerP <- (venn(P)); plot(EulerP)

#Ejemplo con vectores extendidos
aextendida <- c(41,22,51,52,32)
bextendida <- c(22,32,41,12)

#Calcular diferencia entre conjuntos
DIF_AB<-setdiff(aextendida,bextendida); DIF_AB
DIF_BA<-setdiff(bextendida,aextendida); DIF_BA

#Calcular intersección entre conjuntos
intersecciónAB <- intersect(aextendida, bextendida); intersecciónAB


