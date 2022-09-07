# Primero ejecutamos la función que permite leer dentro de la máquina qué paquete tenemos y compararla con la lista que le pasaremos a mano.
Install_Course_Packages <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE) # Instala los paquetes
   update.packages(ask = FALSE) # Actualiza los paquetes
}


# Listado de paquetes a ser utilizados
Course_packages <- c("tidyverse", "readxl", "rjson", "tidyjson", "ggrepel", "XML", "xml2", "rdflib", "tibble", "jsonld", "devtools")

# Función que instalará/actualizará los paquetes del curso.
Install_Course_Packages(Course_packages)

# instalación de un paquete (manual) desde el repositorio en GitHub
devtools::install_github("ropensci/dbparser")
