## TEMA 5 ##
# Vectores ----------------------------------------------------------------
# * Vectores atómicos -----------------------------------------------------

# Crear un objeto
x <- 3

# Imprimir (en consola) un objeto
print(x)
x
class(x)
typeof(x)

#Vector numérico íntegro
y <- 3L
class(y)
typeof(y)

# Vector operación matemática
z <- 1L+1L
z
class(z)
typeof(z)

# Tipos de vectores
lgl_var <- c(TRUE, FALSE)
int_var <- c(1L, 6L, 10L)
dbl_var <- c(1, 2.5, 4.5)
chr_var <- c("these are", "some strings")

typeof(chr_var)

# ** Valores Ausentes -----------------------------------------------------
x <- c(1,5,8,10)
mean(x)

x <- c(1,5, NA,10)
mean(x, na.rm = TRUE)

is.na(x)


# ** Coacción (Coercion) --------------------------------------------------
# Regla para coercion: character → double → integer → logical
c(1,2,3)
typeof(c(1,2,3))

c(TRUE,FALSE,FALSE, 1L, 2, "Tubby")
typeof(c(TRUE,FALSE,FALSE, 1L, 2, "Tubby"))

# Regla de coercion --> útil
x <- c(FALSE, FALSE, TRUE)
x
is.logical(x)
as.numeric(x)

#Funciones matemáticas también siguen la "coercion"
sum(x)
mean(x)

# Forzar con as. a un cáracter
c(1, 1.5, "a")
as.numeric(c(1, 1.5, "a"))

# Nuevo comentario en la línea 65


# ** Nombres -----------------------------------------------------------------
# Primera aproximación a entrega de nombres (de elementos)
x <- c(a = 1, b = 2, c = 3)
class(x)
names(x)

# Segunda aproximación a entrega de nombres (de elementos)
x <- c(1:3)
names(x) <- c("a", "b", "c")
names(x)

# Tercera aproximación a entrega de nombres (de elementos)
x <- setNames(1:3, c("h", "j", "k"))
names(x)
x
# Para quitar los nombres usamos unname()
x <- unname(x)
x

# ** Dimensiones ----------------------------------------------------------
x <- matrix(1:6, nrow = 3, ncol = 3)
x

dim(x)


# ** Indexaciòn Vectores --------------------------------------------------
A <- c("a", "b", "c", "d", "e", "f", "g")
A

# Elementos dentro del vector A
A[4]

# Rango
A[1:3]

# Último elemento
length(A)
A[length(A)]

# indexacion de vectores devuelve mismo vector
A[1:3]
typeof(A[1:3])
# ** Factores -------------------------------------------------------------
x <- factor(c("a", "b", "b", "a"))
x

typeof(x)
attributes(x)

# Ejemplo #2 de factores
sex_char <- c("m", "m", "m")
sex_char
typeof(sex_char)

sex_factor <- factor(sex_char, levels = c("m", "f"), labels = c("Macho", "Hembra"))
sex_factor

attributes(sex_factor)
table(c("m", "m", "m"))
table(sex_factor)

# ** Factores ordinales ---------------------------------------------------
grade <- ordered(c("b", "b", "a", "c"), levels = c("c", "b", "a"))
grade


# * Fechas ----------------------------------------------------------------
# Los vectores de fecha se construyen sobre los vectores dobles
today <- Sys.Date()
today
class(today)
typeof(today)
attributes(today)

# Fechas desde caracter
c("1970-02-01")
class(c("1970-02-01"))
Newdate <- as.Date(c("1970-02-01"))
Newdate
class(Newdate)
unclass(Newdate)

# * Fechas-Horas ----------------------------------------------------------
# Base R proporciona dos formas de almacenar información de fecha y hora, POSIXct y POSIXlt.
now_ct <- as.POSIXct("2018-08-01 22:00", tz = "UTC")
now_ct
typeof(now_ct)
attributes(now_ct)

#tzone, permite cambiar la zona horaria muy fácilemente
structure(now_ct)
structure(now_ct, tzone = "Asia/Tokyo")
structure(now_ct, tzone = "Australia/Lord_Howe")

# * Duraciones ------------------------------------------------------------
# Representan la cantidad de tiempo entre pares de fechas o fechas-horas.
# Se almacenan en `difftimes`

one_week_1 <- as.difftime(1, units = "weeks")
one_week_1
typeof(one_week_1)
attributes(one_week_1)

one_week_2 <- as.difftime(7, units = "days")
one_week_2
typeof(one_week_2)
attributes(one_week_2)


# Matrices/Arrays ---------------------------------------------------------
# Matrices guardan la información en 2 dimensiones
# Arrays guardan la información en 2 o más dimensiones
m <- matrix(seq(1:6), nrow = 2)
m <- matrix(seq(1:6), nrow = 2, byrow = TRUE)
m
str(m)
typeof(m)
class(m)


# * Coercion --------------------------------------------------------------
m
m1 <- matrix(c(1, 2, 3, 4, 5, "Pablo"), nrow = 2)
m1
str(m1)
typeof(m1)


# ** Indexación de Matrices -----------------------------------------------
# Al haber dos dimensiones, la indexación respeta estas dimensiones
# Siempre: "filas, columnas"
m2 <- matrix(seq(1:8), nrow = 4, byrow = TRUE)
m2

# Indexación por posición
dim(m2)

# Indexación de la segunda fila (fila = 2, columnas = todas)
m2[2,]

# Indexación de la segunda columna (fila = todas, columnas = 2)
m2[,2]

# Indexación por nombres
names(m2)
colnames(m2) <- c("Impares", "Pares")
colnames(m2)

m2

# Primera columna
m2[,"Pares"]



# Table de datos (Dataframe) ----------------------------------------------
# Probablemente el formato más usado. 
#Análogo heterogéneo de las matrices.
df1 <- data.frame(
  Numeros = 1:5, 
  Letras = letters[1:5])

df1
typeof(df1)
attributes(df1)

# Carga de paquete y uso de tibble
library(dplyr)

df2 <- tibble(
  Numeros = 1:5, 
  Letras = letters[1:5])
df2
str(df2)


# ** Concatenación/Combinación de dataframes -------------------------------


#

