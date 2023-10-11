# ensembldb_Utilities to create and use Ensembl-based annotation --------
# from: https://bioconductor.org/packages/release/bioc/html/ensembldb.html

# Install & Load Package --------------------------------------------------
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ensembldb")


# Uso básico del paquete --------------------------------------------------
# from: https://bioconductor.org/packages/release/bioc/vignettes/ensembldb/inst/doc/ensembldb.html

# cargamos un paquete de anotación basado en Ensembl para Homo sapiens, Ensembl versión 86.
library(EnsDb.Hsapiens.v86)

# Creamos un acceso directo
edb <- EnsDb.Hsapiens.v86

## Información del paquete
edb

## consultamos el organismo para la cual se ha creado la base de datos
organism(edb)


# Uso de ensembldb para recuperar anotaciones específicas -----------------







