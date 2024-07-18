Este repositorio contiene el proceso de automatización de las cartas de aceptación o rechazo de las ponencias del CLEPSO 2024 
"Eje 10. Estudios socioespaciales, urbanos, medio ambiente y desarrollo".
Los archivos necesarios son:
- Formatos predefinidos en word
   - CLEPSO_2024_Formato_ponencia_aceptada.docx
   - CLEPSO_2024_Formato_ponencia_NO_aceptada.docx
- Archivos RMarkdown (.Rmd):
   - cartaAprobado.rmd
   - cartaNoAprobado.rmd
- Archivo R:
   - automatizacionClepso.R
- Archivos excel (.xlsx):
   - Dictamen_ponencias.xlsx
   - Ponencias CLEPSO 2024.xlsx

Todos los archivos deben estar contenidos en el directorio de trabajo, el código esta diseñado para generar una carpeta que se llama "resultados"
la cual contiene dos subcarpetas "aprobadas" y "desaprobadas", en cada una de estas carpetas se van a guardar los archivos según hallan sido aprobados o no.

Lo único que se requiere es ejecutar el archivo **automatizacionClepso.R**
