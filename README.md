## Automatización de reportes usando `rmarkdown`

Este repositorio contiene el proceso de automatización de las cartas de aceptación o rechazo de las ponencias del CLEPSO 2024 **"Eje 10. Estudios socioespaciales, urbanos, medio ambiente y desarrollo"**.

A partir de una plantilla de Word y rmarkdown y un Excel con los resultados de los evaluadores de las ponencias, se generan las cartas de aceptación y rechazo de los postulantes, incorporando un cuadro con la desagregación del resultado.

Las plantillas son:

- Formatos predefinidos en Word (.docx)
   - CLEPSO_2024_Formato_ponencia_aceptada.docx
   - CLEPSO_2024_Formato_ponencia_NO_aceptada.docx
- Archivos rmarkdown (.Rmd)
   - cartaAprobado.rmd
   - cartaNoAprobado.rmd

El archivo que contiene el código con el proceso de automatización es `automatizacionClepso.R`, el cual toma los datos de aprobación o rechazo de los archivos Excel (.xlsx) `Dictamen_ponencias.xlsx` y `Ponencias CLEPSO 2024.xlsx`.

Para la ejecución del proceso, todos los archivos deben estar contenidos en el directorio de trabajo, el código esta diseñado para generar una carpeta que se llama *"resultados"*
la cual contiene dos subcarpetas *"aprobadas"* y *"desaprobadas"*, en cada una de estas carpetas se van a guardar los archivos según hallan sido aprobados o no.

Cualquier consulta o comentario respecto al proceso de automatización de reportes, puedes contactarme al correo <gomezsantiagogerardoesteban@gmail.com>
