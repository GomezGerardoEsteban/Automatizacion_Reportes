######################################################################################
#
# Titulo: Este script contiene el proceso para la automatización de reportes en RMarkdown 
#         para la generación de los documentos de aceptción o rechazo a ponencias de 2024
#
# Fecha: 17/07/2024
#
# Autor: Gerardo Esteban Gómez-Santiago
#
######################################################################################

rm(list = ls())

library(knitr)
library(rmarkdown)
library(tidyverse)
library(readxl)
library(flextable)

base_dictamen <- read_excel("Dictamen_ponencias_David_Eje10 (1).xlsx", sheet = 3)

base_dictamen <- base_dictamen %>% 
  gather(key = ponencia, value = valor, 3:length(base_dictamen))

base_dictamen

testeo <- base_dictamen %>% 
  filter(`Número de la ponencia` == "Decisión: Rellenar en color la celda final de cada columna según el caso") %>% 
  select(`Número de la ponencia`, ponencia, valor)

prueba <- testeo$valor


for(i in 1:length(prueba)){
  
  if(prueba[i] == "Aprobada"){
  
  rmarkdown::render(input = "cartaAprobado.Rmd",
                    output_format = "word_document",
                    output_file = paste( i," Resultado eje 10", ".docx", sep=''),
                    output_dir = "resultados/aprobadas/")
    
  }else{
    
    rmarkdown::render(input = "cartaNoAprobado.Rmd",
                      output_format = "word_document",
                      output_file = paste( i," Resultado eje 10", ".docx", sep=''),
                      output_dir = "resultados/desaprobadas/")
    
    
  }
    
}
  