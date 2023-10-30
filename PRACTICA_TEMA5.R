## TEMA 5 ##
# Vectores ----------------------------------------------------------------
# * Vectores atómicos -----------------------------------------------------

# Crear un objeto
x <- 3

# Imprimir (en consola) un objeto
print(x)
# Para pedir ayuda de una función en línea se usa el ?
?print

x
class(x)
typeof(x)

#Vector numérico entero
y <- 3L
class(y)
typeof(y)

# Vector operación matemática
z <- 1L + 1L
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

x <- c(1, 5, NA, 10)
mean(x)

mean(x, na.rm = TRUE)

is.na(x)

# ** Coacción (Coercion) --------------------------------------------------
# Regla para coercion: character → double → integer → logical
c(1,2,3)
typeof(c(1,2,3))

c(1,2,"Pablo")
typeof(c(1,2,'Pablo'))

c(TRUE,FALSE,FALSE, 1L, 2, "Tubby")
typeof(c(TRUE,FALSE,FALSE, 1L, 2.5, "Tubby"))
typeof(c(TRUE,FALSE,FALSE, 1L, 2, "Tubby"))

# Regla de coercion --> útil
x <- c(FALSE, FALSE, TRUE)
x
is.logical(x)
as.numeric(x)
typeof(x)

#Funciones matemáticas también siguen la "coercion"
sum(x)
mean(x)

# Forzar con as. a un cáracter
c(1, 1.5, "A")
as.numeric(c(1, 1.5, "A"))

x <- c(1, 1.5, "A")
typeof(x)

# ** Nombres -----------------------------------------------------------------
# Primera aproximación a entrega de nombres (de elementos)
x <- c(a = 1, b = 2, c = 3)
x
class(x)
typeof(x)
attributes(x)
names(x)


# Segunda aproximación a entrega de nombres (de elementos)
x <- c(1:5)
x
attributes(x)

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
# VECTORES
x <- c(1:5)

dim(x)
length(x)

# MATRICES
x <- matrix(1:12, nrow = 3, ncol = 4)
x

dim(x)
class(x)
typeof(x)

x <- matrix(letters[1:6], nrow = 3, ncol = 4)
x

dim(x)
class(x)
typeof(x)


# DATAFRAMES
df1 <- data.frame(
  Numeros = 1:5, 
  Letras = letters[1:5])

df1

dim(df1)
class(df1)
typeof(df1)
attributes(df1)

# LISTAS
l1 <- list(
  Enteros = 1:3, 
  Letra = "a", 
  Logico = c(TRUE, FALSE, TRUE), 
  Numeros = c(2.3, 5.9)
)

l1

dim(l1)
typeof(l1)
length(l1)
attributes(l1)
str(l1)

# ** Indexación Vectores --------------------------------------------------
A <- c("a", "b", "c", "d", "e", "f", "g", "h")
A

# Elementos dentro del vector A
A[3]

# Rango
A[1:3]

# Último elemento
length(A)
A[8]
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
table(sex_char)

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
Newdate <- as.Date(c("1970/02/01"))
Newdate
class(Newdate)
unclass(Newdate)

# * Fechas-Horas ----------------------------------------------------------
# Base R proporciona dos formas de almacenar información de fecha y hora, POSIXct y POSIXlt.
now_ct <- as.POSIXct("2018-08-01 22:00", tz = "UTC")
now_ct
typeof(now_ct)
attributes(now_ct)

#tzone, permite cambiar la zona horaria muy fácilmente
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

difftime(structure(now_ct), structure(now_ct), units = "week")

difftime(structure(now_ct), structure(Sys.Date()), units = "hours")


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
colnames(m2)
colnames(m2) <- c("Impares", "Pares")
colnames(m2)

m2

# Primera columna
m2[,1]
m2[,"Impares"]

# Segunda columna
m2[1:3,"Pares"]

m2[c(1,2,4),"Pares"]

# indexación matrices no cambia la clase
class(m2)
typeof(m2)

str(m2[1:3,"Pares"])
class(m2[1:3,"Pares"])
typeof(m2[1:3,"Pares"])

# Tabla de datos (Dataframe) ----------------------------------------------
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
typeof(df2)
str(df2)


# ** Concatenación/Combinación de dataframes -------------------------------
#

# Ciclado en dataframes
data.frame(x = 1:4, y = 'Spain')


# *** Tibble v/s Dataframe ------------------------------------------------

#data.frame
data.frame(
  x = 1:3,
  y = x * 2
)

# tibble
# library(dplyr) # debería estar cargado de antes
tibble(
  x = 1:3,
  y = x*2
)

dplyr::starwars

# ** Indexación de dataframes ---------------------------------------------
df1
df2

# Indexación por nombre
df1$Numeros
str(df1$Numeros)

df2$Letras
str(df2$Letras)

# Indexar por posición
df1
df1[1:2,2]
df1[,1]

# indexación por posición y nombre
df1$Letras
df1[, "Letras"]
df1[1:3, "Letras"]

df1[c(1,3,5), "Letras"]

# Diff. tibble v/s data.frame
# df1 = dataframe
str(df1$Numeros)
# df2 es un tibble
str(df2$Numeros)

str(df1$Nu)
str(df2$Nu)



# Listas ------------------------------------------------------------------
# Análogos heterogéneos de los vectores
# función `list()`

l1 <- list(
  Enteros = 1:3, 
  Letra = "a", 
  Logico = c(TRUE, FALSE, TRUE), 
  Numeros = c(2.3, 5.9)
)

l1

typeof(l1)
str(l1)

# Lazy-evaluation en listas
lobstr::obj_size(mtcars)

l2 <- list(mtcars, mtcars, mtcars, mtcars)
lobstr::obj_size(l2)


# ** Combinación de listas ------------------------------------------------
# Listas --> vectores recursivos
l4 <- list(list(1,2), c(3,4))
l4

l5 <- c(list(1,2), c(3,4))
l5


# **Coacción / Coercion de Listas -----------------------------------------
# Para probar una lista usar `is.list()`.
# Para coaccionar a una lista usar `as.list()`.
list(1:3)

typeof(list(1:3))

seq(1:3)
list(seq(1:3))
typeof(seq(1:3))

as.list(seq(1:3))

typeof(as.list(seq(1:3)))

list(c(seq(1:3), "hola"))

typeof(list(c(seq(1:3), "hola")))

# ** Indexación de Listas -------------------------------------------------
# Al igual que las Matrices las listas se pueden indexar por posición (Dimensión) y/o por nombre, o por ambas.
l1
l1[[3]][3]
# Por dimensión
l1[[1]]
l1[[1]][2]
l1[[3]][2]
str(l1[[1]])

#Por nombre
str(l1)

l1$Logico[3]
l1$Letra

#agrego una dimensión más
# Sin entregar el nombre
l1[[5]] <- df2
str(l1)

# A través de entregar el nombre
l1$DataFrame <- df1
str(l1)
l1

l1[[5]]$Letras[3]

l1[[5]]$Letras

l1$Logico
l1$Logico[2]

# Muy poco usado
l1[["Logico"]]

# Importación de Datos ----------------------------------------------------
# * Importar *.xls y *.xlsx -----------------------------------------------
library(readxl)
Galapagos <- read_excel("INPUT/DATA/Galapagos_DB.xlsx", 
                        sheet = "DBR")
Galapagos
str(Galapagos)
summary(Galapagos)
# View(Galapagos) # Just in case

# HASTA AQUI CLASE 16 OCTUBRE #
# * Importación desde CSV -------------------------------------------------
library(readr)
Acc_Car <- read_delim("INPUT/DATA/accidentalidad-por-carreteras.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Acc_Car
summary(Acc_Car)
View(Acc_Car)

table(Acc_Car$T.RED)

# Modificando el tipo (clase) de cada Columna
Acc_Car <- read_delim("INPUT/DATA/accidentalidad-por-carreteras.csv",
                      delim = ";", escape_double = FALSE, trim_ws = TRUE,
                      col_types = cols(
                        T.RED = readr::col_factor(levels = NULL)
                      ))

Acc_Car
str(Acc_Car)
summary(Acc_Car)

# * Importación desde la Web ----------------------------------------------
# Agua consumo humano desde la red
Agua_Consumo <- read_delim("https://datosabiertos.jcyl.es/web/jcyl/risp/es/salud/calidad-aguas-consumo/1284839789043.csv",
                           delim = ";")

Agua_Consumo
summary(Agua_Consumo)

Agua_Consumo$`Nº infraestructuras - Depósitos`
Agua_Consumo$`Nº de zonas de abastecimiento`
Agua_Consumo$`Análisis efectuados en las infraestructuras - Análisis completo`
Agua_Consumo$`Nº boletines analíticos de calidad de aguas de consumo humano por su calificación - Apta para el consumo con no conformidad`


# INTRO DPLYR -------------------------------------------------------------
# paquete dplyr
library("dplyr")

#set de datos
data("starwars")
?starwars

# * Verbos de tablas únicas -----------------------------------------------
# operan sobre una única tabla de datos

# Hasta Aqui Lunes 30 Octubre
# *** Filter --------------------------------------------------------------
# Filter modificará la primera dimensión de nuestros dataframes
# modifica las filas

# Filtrado de filas por columnas numéricas
# Aquellos personajes que pesan más de 100 KG
data(starwars)
starwars

dplyr::filter(.data = starwars, mass > 100)

# Aquellos personajes que pesan menos de 50 KG
filter(starwars, mass < 50)

# Aquellos que pesan entre 50 y 100 kg
dplyr::filter(.data = starwars, mass >= 50 & mass <= 100)

filter(starwars, between(mass, 50, 100))

# Filtra por variables categóricas
# Aquellos personajes con un color de piel "claro"
# todos los tipos de color de piel
starwars

levels(factor(starwars$skin_color))

table(starwars$skin_color)

filter(starwars, skin_color == "blue, grey")

# HASTA Aqui Lunes 30 - 102 #
# *** Slice ---------------------------------------------------------------
# Selección de filas según la ubicación

# seleccionar las primera fila
slice_head(.data = starwars)

# seleccionar la última fila
slice_tail(.data = starwars)

# seleccionar las primeras cinco (n) filas
slice_head(.data = starwars, n = 5)

# seleccionar las últimas cinco (n) filas
slice_tail(.data = starwars, n = 5)

# seleccionar las filas entre la 8 y la 12
slice(.data = starwars, 8:12)

# seleccionar (al azar) una determinada cantidad (n) de filas
slice_sample(.data = starwars, n = 4)
slice_sample(.data = starwars, n = 4)

# seleccionar (al azar) una determinada proporción (prop) de filas
slice_sample(.data = starwars, prop = 0.7)

# Selección de filas según otra variable

# Seleccionar al personaje más alto
slice_max(.data = starwars, order_by = height)

# Seleccionar a los 3(n) personajes más altos
slice_max(.data = starwars, order_by = height, n = 3)

# Seleccionar al personaje más pesado
slice_max(.data = starwars, order_by = mass)

# Seleccionar a los 3(n) personajes más pesados
slice_max(.data = starwars, order_by = mass, n = 3)


# *** Arrange -------------------------------------------------------------
# Ordena las filas de manera ascendente (por defecto)

# ordena los personajes de Starwars desde el más bajo al más alto
arrange(.data = starwars, height)

# ordena los personajes de Starwars desde el más alto al más bajo
arrange(.data = starwars, desc(height))

# ordena los personajes de Starwars por más de una variable
arrange(.data = starwars, desc(height), mass)


# *** Summarise -----------------------------------------------------------
# Reduce toda la dimensión 1, a una sola fila, dependiendo del valor que se haya pedido para una columna en particular (máximo, mínimo, promedio, etc.). Crea un nuevo tibble

# Altura promedio (y desviación estándar) de todos los personajes
summarise(.data = starwars, Alt_prom = mean(height, na.rm = TRUE), Alt_desv = sd(height, na.rm = TRUE))


# ** Columnas (dimensión 2) -----------------------------------------------

# *** Select --------------------------------------------------------------
# Permite seleccionar algunas columnas

# selecciona nombres específicos de columnas
select(.data = starwars, hair_color, skin_color, eye_color)

# selecciona un rango de columnas
select(.data = starwars, hair_color:birth_year)

# selecciona aquellas columnas que NO están en un rango
select(.data = starwars, !(hair_color:birth_year))

# selecciona aquellas columnas que coinciden con un criterio (terminan con el caracter "color")
select(.data = starwars, ends_with("color"))


# *** Rename --------------------------------------------------------------
# Permite renombrar columnas

# renombra una o más columnas seleccionadas a mano
rename(.data = starwars, altura = height)

rename(.data = starwars, altura = height, peso = mass, color_pelo = hair_color)

# renombra una o más columnas que cumplen un criterio
rename_with(.data = starwars, toupper, ends_with("color"))


# *** Mutate --------------------------------------------------------------
# Crea nuevas columnas a partir de columnas previas

# columna nueva con la interacción de factores
mutate(.data = df2, alfanum = interaction(Numeros, Letras, sep = ":"))
mutate(.data = df2, Saludo = "Hola")

# columna nueva con la altura en metros (no en centímetros)
mutate(.data = starwars, Altura_m = height / 100)

# columna nueva y selección de nueva columna de altura en metros (no en centímetros)
transmute(.data = starwars, Altura_m = height / 100)

# *** Relocate ------------------------------------------------------------
# Similar a select y sirve para mover columnas

# Mover el rango de columnas desde sex hasta homeworld, delante de height
starwars
relocate(.data = starwars, sex:homeworld, .before = height)

# ** Operaciones combinadas -----------------------------------------------
# Usaremos dos funciones %>% y group_by

# *** Group_by ------------------------------------------------------------
# Duplica el tibble pero agrega un atributo nuevo

# Promedio y desviación standar del set completo
summarise(.data = starwars, Alt_prom = mean(height, na.rm = TRUE), Alt_desv = sd(height, na.rm = TRUE))

# # agrupando por niveles de una variable categórica
# Promedio y desviación estándar para cada género
a1 <- group_by(.data = starwars, gender)

a1

attributes(a1)

summarise(.data = a1, Alt_prom = mean(height, na.rm = TRUE), Alt_desv = sd(height, na.rm = TRUE))

# agrupando por niveles de más de una variable categórica
# Promedio y desviación estándar para cada género y especie
a2 <- group_by(.data = starwars, gender, species)

a2

attributes(a2)

summarise(.data = a2, Alt_prom = mean(height, na.rm = TRUE), Alt_desv = sd(height, na.rm = TRUE))


# *** Pipes ---------------------------------------------------------------
# Máximo poder a R
# Concatenamos funciones de una manera sencilla de leer (de arriba a abajo)

# Pipe con Select
starwars %>%
  select(.data = ., name, species)

# Argumento data puede estar ausente, pero en un pipe se asume "(.)"
starwars %>% 
  select(name, species)

# Pipe con filter
starwars %>% 
  dplyr::filter(.data = ., skin_color %in% c("light", "gold"), eye_color %in% c("hazel", "yellow"))

# Pipeline #1
starwars %>% 
  select(name, species) %>% 
  str()

# Pipeline #2
starwars %>% 
  select(name, species) %>% 
  View()

# Pipeline #3 
# Uso de Pipeline y groupby para calcular promedios de variables por grupos
starwars %>%
  group_by(species, sex) %>%
  select(height, mass) %>%
  summarise(
    height = mean(height, na.rm = TRUE),
    mass = mean(mass, na.rm = TRUE)
  )

# Pipeline #4
# Body Mass Index (BMI) 
starwars %>%
  mutate(
    height_m = height / 100,
    BMI = mass / (height_m^2)
  ) %>%
select(BMI, everything()) %>% 
  slice_max(., order_by = BMI, n = 3)

# More on BMI
# https://www.calculator.net/bmi-calculator.html?ctype=metric&cage=43&csex=m&cheightfeet=5&cheightinch=10&cpound=160&cheightmeter=173&ckg=82&printit=0&x=76&y=13

# *** Operaciones por columnas -------------------------------------------
# Repetir la misma operación por columnas
library(tidyverse)
starwars

# Promedio de altura, peso y año nacimiento por especies

# Aproximación manual (no muy clever si son muchas)
starwars %>%
  group_by(species) %>%
  filter(n() > 1) %>% # para evitar NA en standar deviation
  summarise(
    Av_height = mean(height, na.rm = TRUE),
    Av_mass = mean(mass, na.rm = TRUE),
    Av_birth_year = mean(birth_year, na.rm = TRUE)
  )

# Aproximación usando across. Se pueden usar las funciones de select

# Selección variables a mano
starwars %>%
  group_by(species) %>%
  filter(n() > 1) %>%
  summarise(across(c(height, mass, birth_year), ~ mean(.x, na.rm = TRUE)))

# Selección variables por tipo
starwars %>%
  group_by(species) %>%
  filter(n() > 1) %>%
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE)))

# ¿Cuántos sexos, géneros y orígenes hay para cada especie?
?starwars

starwars %>% 
  group_by(species) %>% 
  filter(n() > 1) %>% 
  summarise(across(c(sex, gender, homeworld), ~ length(unique(.x))))

# Altura, peso y año de nacimiento promedio según lugar de origen desde el promedio más viejo al más joven
starwars %>% 
  group_by(homeworld) %>% 
  filter(n() > 1) %>% 
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE))) %>% 
  arrange(desc(birth_year)) 

# Para quitar la fila con el NA
library(tidyr)
starwars %>% 
  group_by(homeworld) %>% 
  filter(n() > 1) %>% 
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE))) %>% 
  arrange(desc(birth_year)) %>% 
  drop_na()

# Guardamos esta tabla en un objeto para el siguiente punto
Wide_Starwars <- 
  starwars %>% 
  group_by(homeworld) %>% 
  filter(n() > 1) %>% 
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE))) %>% 
  arrange(desc(birth_year)) %>% 
  drop_na()

Wide_Starwars


# ** Pivotar (Pivoting) -------------------------------------------------------------
# Transponer la estructura de nuestra tabla ordenada

# Pivot_longer (desde ancho a largo)
Wide_Starwars

pivot_longer(data = Wide_Starwars, names_to = "Variable", values_to = "Valores", cols = c(height:birth_year))

# Pipeline #1
Wide_Starwars %>% 
  pivot_longer(data = ., names_to = "Variable", values_to = "Valores", cols = c(height:birth_year))

# Pipeline #2
starwars %>% 
  group_by(homeworld) %>% 
  filter(n() > 1) %>% 
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE))) %>% 
  arrange(desc(birth_year)) %>% 
  drop_na() %>% 
  pivot_longer(data = ., names_to = "Variable", values_to = "Valores", cols = c(height:birth_year))

# Guardamos un objeto para siguiente sección
Long_Starwars <-
  starwars %>% 
  group_by(homeworld) %>% 
  filter(n() > 1) %>% 
  summarise(across(where(is.numeric), ~ mean(.x, na.rm = TRUE))) %>% 
  arrange(desc(birth_year)) %>% 
  drop_na() %>% 
  pivot_longer(data = ., names_to = "Variable", values_to = "Valores", cols = c(height:birth_year))

Long_Starwars

# Pivot_wider (desde largo a ancho)
Long_Starwars

pivot_wider(data = Long_Starwars, names_from = "Variable", values_from = "Valores")

# Pipeline #1
Long_Starwars %>% 
  pivot_wider(data = ., names_from = "Variable", values_from = "Valores")

# También funciona sin comillas en los atributos aunque no es recomendable.
# Long_Starwars %>%
#   pivot_wider(data = ., names_from = Variable, values_from = Valores)

# ** Verbos de dos tablas -------------------------------------------------
#library(readr)


# *** Carga de datos ------------------------------------------------------
# Loading the "Galapagos_summary.csv" file
library(readr)
Mean_Galapagos <- read_csv(file = "INPUT/DATA/Galapagos_summary.csv", 
                           col_types = cols(
  Island = readr::col_factor(levels = NULL),
  Station = readr::col_factor(levels = NULL),
  distance = readr::col_factor(levels = NULL),
  Av_Temp = col_double(),
  Av_Salinity = col_double(),
  Av_Chla = col_double()
))

Mean_Galapagos
levels(Mean_Galapagos$Island)
levels(Mean_Galapagos$Station)

# Loading the "Species_Richness_PerSite.csv" file
Species <- read_csv("INPUT/DATA/Species_Richness_PerSite.csv", col_types = cols(
  ID = col_integer(),
  Island = readr::col_factor(levels = c("Pinzón", "Santa Cruz", "Santa Fé", "Seymour")),
  Latitude.South = col_double(),
  Longitude.West = col_double(),
  Station = readr::col_factor(levels = c("North", "West", "South", "East")),
  distance = readr::col_factor(levels = NULL),
  NewFactor = readr::col_factor(levels = NULL),
  SpeciesRichness = readr::col_integer()
))

Species
View(Species)

# *** Inspección de los datos ---------------------------------------------
# Vista general
summary(Mean_Galapagos)
summary(Species)

# Presunciones de la union
levels(Mean_Galapagos$Island)
levels(Species$Island)

# Si los niveles no son iguales, forzamos los niveles de una tabla a ser igual que los de otra
# Species <-
#   Species %>% 
#   mutate(Island = factor(Island, levels = c("Pinzón", "Santa Cruz","Santa Fé", "Seymour" )))

levels(Mean_Galapagos$Station)
levels(Species$Station)

levels(Mean_Galapagos$distance)
levels(Species$distance)


# *** Left_Join -----------------------------------------------------------

# Sin indicar las columnas que hacen de "pivot" --> natural Join
left_join(x = Mean_Galapagos, y = Species)

# Igual, pero correctamente escrito
left_join(x = Mean_Galapagos, y = Species, by = c("Island", "Station", "distance")) 

# Indicación parcial, ver que pasa con los no señalados
left_join(x = Mean_Galapagos, y = Species, by = c("Island"))


# *** full_join -----------------------------------------------------------
# Accidentalidad por Carreteras
# https://analisis.datosabiertos.jcyl.es/explore/dataset/accidentalidad-por-carreteras/export/?sort=ano
# Detalle en: https://datosabiertos.jcyl.es/web/jcyl/binarios/582/267/%C3%8Dndices_de_accidentalidad.pdf?blobheader=application%2Fpdf%3Bcharset%3DUTF-8&blobnocache=true
# Índice de Peligrosidad “IP” / Índice de Mortalidad “IM” / Índice de Accidentalidad Total “IAT” / Índice de Lesividad “IL” / Índice de Gravedad “IG”
# library(readr)
 Acc_Car <- read_delim("INPUT/DATA/accidentalidad-por-carreteras.csv", 
                       delim = ";", escape_double = FALSE, trim_ws = TRUE)

Acc_Car
str(Acc_Car)
levels(factor(Acc_Car$NOMBRE))

# Seleccionamos lo querealmente nos sirve
Acc_Car %>% 
  select(`AÑO`, T.RED, NOMBRE, LONG.:IG) 


# Anchura de carretras
# https://datosabiertos.jcyl.es/web/jcyl/set/es/urbanismo-infraestructuras/anchura-carreteras/1284967627462
# library(readr)
Ancho_Car <- read_delim("INPUT/DATA/anchura-de-carreteras.csv", 
                         delim = ";", escape_double = FALSE, trim_ws = TRUE)

Ancho_Car
str(Ancho_Car)
levels(factor(Ancho_Car$CARRETERA))

# Seleccionamos lo que realmente nos sirve
Ancho_Car %>% 
  select(PR:CARRETERA, LONGITUD:`ESTAC.\nAFORO`)

# Ejecutamos el full_join
Acc_Car %>% 
  select(`AÑO`, T.RED, NOMBRE, LONG.:IG) %>% 
  full_join(x = ., 
            y = Ancho_Car %>% 
              select(PR:CARRETERA, LONGITUD:`ESTAC.\nAFORO`),
            by = c("NOMBRE" = "CARRETERA"))


# Guardamos un objeto con el join creado
Accidentes_total <-  
  Acc_Car %>% 
  select(`AÑO`, T.RED, NOMBRE, LONG.:IG) %>% 
  full_join(x = ., 
            y = Ancho_Car %>% 
              select(PR:CARRETERA, LONGITUD:`ESTAC.\nAFORO`),
            by = c("NOMBRE" = "CARRETERA"))

Accidentes_total 

summary(Accidentes_total)

# Relación entre el Índice de Mortalidad y el ancho de la carretea?
library(ggplot2)

# muchos ceros en IM, mejor quitarlos
ggplot(data = Accidentes_total, mapping = aes(x = `ANCHURA\nASF\n(m.)`, y = IM)) +
  geom_point(na.rm = TRUE)

# Análisis sin ceros
x11()
Accidentes_total %>% 
  filter(IM > 0) %>% 
  ggplot(data = ., mapping = aes(x = `ANCHURA\nASF\n(m.)`, y = IM)) +
  geom_point(na.rm = TRUE) +
  geom_smooth(na.rm = TRUE) +
  labs(x = "Anchura Carretera (m)", y = "Índice de Mortalidad (IM)", 
       subtitle = "Relación entre ancho de carretera y el I.M.") +
  theme_classic()


# Introducción  ggplot2 ---------------------------------------------------
#library(ggplot2)
library(tidyverse)

?ggplot2


# * Gráfico básico ---------------------------------------------------------

# Cargamos los datos
data("mpg")

# reseña del set de datos
?mpg

str(mpg)

# ayuda de la función principal de ggplot2
?qplot
?ggplot

# Definición de las tres mínimas variables en un gráfico
ggplot(data = mpg, aes(x = displ, y = hwy))


# ** Gráfico de dispersión ------------------------------------------------
# Incluyendo la geometría
ggplot(data = mpg, aes(x = displ, y = hwy)) + 
  geom_point()

?geom_point

# Controlando el color -- Fijo
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(colour = "palevioletred2")

# Controlando el color -- Dependiente de otra variable
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = factor(cyl)))

# Qué tipo de colores se obtienen con una variable continua? 
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = cyl))

# Agregamos una línea de ajuste
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

# Podemos comparar diferentes modelos de ajustes
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(method = "loess", colour = "blue", se = TRUE) +
  geom_smooth(method = "lm", formula = y~poly(x,1), colour = "red", se = TRUE)

# Podemos ajustar modelos dependientes de cada nivel de la variable categórica
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = factor(cyl))) +
  geom_smooth(method = "lm", aes(colour = factor(cyl)))


# ** Gráfico de barras ----------------------------------------------------
data("diamonds")
str(diamonds)
?diamonds

# Gráfico sencillo con "conteo" de ítems (solo "x" variable)
ggplot(data = diamonds, aes(x = cut)) +
  geom_bar()

# Mismo gráfico, pero llevado a proporción (todas las áreas suman 1)
ggplot(data = diamonds, aes(x = cut, y = ..prop.., group = 1)) +
  geom_bar()

# Modificando el colour --> no es lo que esperas!
ggplot(data = diamonds, aes(x = cut)) +
  geom_bar(aes(colour = clarity))

# Modificando el "relleno" de las cajas
ggplot(data = diamonds, aes(x = cut)) +
  geom_bar(aes(fill = clarity), colour = "black")

# Para hacer comparaciones "intra-clase" de la variable de relleno
ggplot(data = diamonds, aes(x = cut)) +
  geom_bar(aes(fill = clarity), position = "fill")

# Para hacer comparaciones entre niveles del eje X considerando la tercera variable
ggplot(data = diamonds, aes(x = cut)) +
  geom_bar(aes(fill = clarity), position = "dodge")

# Usando 2 variables (no de la manera correcta, aún)
ggplot(data = diamonds, aes(x = cut, y = carat)) +
  geom_bar(stat = "identity")


# ** Gráficos de Coordenadas polares (Coxcomb) ----------------------------

# Preparación del gráfico
ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, fill = cut), 
    show.legend = FALSE,
    width = 1
  ) + 
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)

# Agregando las transformaciones
# coord_flip
ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, fill = cut), 
    show.legend = FALSE,
    width = 1
  ) + 
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL) +
  coord_flip()


# coord_polar
ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, fill = cut), 
    show.legend = FALSE,
    width = 1
  ) + 
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL) +
  coord_polar()

# * Facetas  ---------------------------------------------------------
# Permiten dividir el gráfico según niveles de una variable discreta

# Manipulando color y forma dentro de los puntos --> no muy útil
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = factor(cyl), shape = drv))

# como la variable `drv` tiene solo 3 niveles, podemos dividir el gráfico de acorde a ellas
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = factor(cyl))) +
  facet_wrap(facets = vars(drv), nrow = 1)

# Podemos tener 5 variables en un gráfico!
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = factor(cyl))) +
 #facet_wrap(class ~ drv)
facet_grid(class ~ drv, scales = "free", margins = TRUE) # Muestra la grilla con toda la combinación

# * Etiquetas --------------------------------------------------------
# Permiten mejorar los "nombres" de ejes, títulos, subtítulos, etc.

# Controlando cada etiqueta por sí sola (ejes)
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlab("Displacement (Litres)") +
  ylab("Yield (miles / gallon)")

# Controlando cada etiqueta por sí sola (ejes + títulos)
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlab("Displacement (Litres)") +
  ylab("Yield (miles / gallon)") +
  ggtitle(label = "Highway yield ", subtitle = "cars")


# Controlando todas las etiquetas en una sola función
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  labs(
    x = "Displacement (Litres)",
    y = "Yield (miles / gallon)",
    title = "Highway yield ",
    subtitle = "cars"
  )

# Controlando todas las etiquetas en una sola función (incluye títulos de leyendas)
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = class, shape = factor(cyl))) +
  labs(
    x = "Displacement (Litres)",
    y = "Yield (miles / gallon)",
    title = "Highway yield",
    subtitle = "cars",
    colour = "Vehicle \n type",
    shape = "Cylinders \n (Number)"
  )


# ** Etiquetas dentro del gráfico ----------------------------------------
# Gráfico base
ggplot(mpg, aes(displ, hwy)) +
  geom_point(size = 0.5)

# Agregamos la tercera variable como "texto" dentro del gráfico
ggplot(mpg, aes(displ, hwy)) +
  geom_point(size = 0.5) +
  geom_text(aes(label = manufacturer))

# Evitamos la sobreposición (suave)
ggplot(mpg, aes(displ, hwy)) +
  geom_point(size = 0.3) +
  geom_text(aes(label = manufacturer), check_overlap = TRUE)

# Evitamos la sobreposición (fuerte) --> requiere ggrepel
library(ggrepel)

x11(width = 16, height = 8)
ggplot(mpg, aes(displ, hwy)) +
  geom_point(size = 0.4, colour = "red") +
  geom_text_repel(aes(label = manufacturer))


# * Límites de los ejes ----------------------------------------------
# Permiten mejorar la visualización haciendo "zoom" o "recortando" el gráfico

# Ajustando los límites en una sola función ("recortando")
ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  lims(x = c(20, 30), y = c(2, 4))

# Cuidado con recortar, porque hay capas que dependen de la cantidad de puntos
ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth()

# Si cortamos y solo dejamos la zona central (con pendiente negativa) ahora es cercana a cero
ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth() +
  lims(x = c(19, 24))

# Para evitar este efecto del "recorte" lo que hacemos es un zoom dentro del gráfico
ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth()

ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth() +
  coord_cartesian(xlim = c(19, 24), expand = TRUE)


# * Temas ------------------------------------------------------------
# Cambian la apariencia general del gráfico (todo lo que no esté relacionado con los datos)
ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth()

ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth() +
  theme_classic()

ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth() +
  theme_void()

ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth() +
  theme_classic()

ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth() +
  theme_minimal()

ggplot(mpg, aes(hwy, displ)) +
  geom_point() +
  stat_smooth() +
  theme_void()

?theme
# * Guardando los gráficos. ------------------------------------------
# Hasta ahora no hemos creado ningún objeto y es lo que deberemos hacer
Final_plot <-
  ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(colour = class, shape = factor(cyl))) +
  labs(
    x = "Displacement (Litres)",
    y = "Yield (miles / gallon)",
    title = "Highway yield",
    subtitle = "cars",
    colour = "Vehicle \n type",
    shape = "Cylinders \n (Number)"
  )

# Al imprimir el objeto (ejecutar su nombre) se "dibuja" el gráfico 
Final_plot
print(Final_plot)
x11(Final_plot)
# Usamos la siguiente instrucción para guardar el gráfico
ggsave(
  filename = "Car_yield_highway.jpeg",
  plot = Final_plot ,
  #path = paste(getwd(), "/OUTPUT/Figures", sep = ""), # ruta absoluta
  path = "OUTPUT/Figures", # ruta relativa
  scale = 0.5,
  width = 40,
  height = 20,
  units = "cm",
  dpi = 320
)

# Datos Semi-Estructurados ------------------------------------
# * Importación desde CSV -------------------------------------------------
# Accidentalidad por Carreteras
# https://analisis.datosabiertos.jcyl.es/explore/dataset/accidentalidad-por-carreteras/export/?sort=ano
# Detalle en: https://datosabiertos.jcyl.es/web/jcyl/binarios/582/267/%C3%8Dndices_de_accidentalidad.pdf?blobheader=application%2Fpdf%3Bcharset%3DUTF-8&blobnocache=true
# Índice de Peligrosidad “IP” / Índice de Mortalidad “IM” / Índice de Accidentalidad Total “IAT” / Índice de Lesividad “IL” / Índice de Gravedad “IG”
library(readr)
Acc_Car <- read_delim("INPUT/DATA/accidentalidad-por-carreteras.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

Acc_Car

str(Acc_Car)
summary(Acc_Car)
#View(Acc_Car)

# * Desde JSON ------------------------------------------------------------
# Teoría json
# https://cran.r-project.org/web/packages/tidyjson/vignettes/visualizing-json.html
# https://www.json.org/json-en.html
library(tidyverse)
library(rjson)

Acc_Car_Json <- fromJSON(file = "INPUT/DATA/accidentalidad-por-carreteras.json")

Acc_Car_Json
head(Acc_Car_Json)

# ** Uso de tidyjson ------------------------------------------------------
# devtools::install_github("colearendt/tidyjson")
#https://github.com/colearendt/tidyjson
library(tidyjson)

data("worldbank")

head(worldbank)
View(worldbank)

# Usamos `spread_all()` para formatear los datos
spread_all(worldbank)

worldbank %>% 
  spread_all() %>% 
  View()

# Aproximación Tidy para los accidentes en carretera
head(Acc_Car_Json)
spread_all(Acc_Car_Json)

Acc_Car_Json %>%
  spread_all() %>% 
  View()

# Guardamos el objeto
Acc_Car_TJson <- spread_all(Acc_Car_Json)

# comparando
Acc_Car_TJson
lobstr::obj_size(Acc_Car_TJson)

Acc_Car
lobstr::obj_size(Acc_Car)

# HASTA AQUI LUNES 23 #
# Revisando que no existan arrays --> sino: https://github.com/colearendt/tidyjson#examples
spread_all(Acc_Car_Json) %>% View()

Acc_Car_Json %>% 
  gather_object %>% 
  json_types %>% 
  count(name, type)

# ¿Qué pasa con el conjunto de datos WorldBank?
# worldbank %>% 
#   spread_all() %>% 
#   View()
worldbank %>% spread_all %>% glimpse() #str equivalent

# Funciona el spread_all? ¿hay arrays?
worldbank %>% 
  spread_all() %>% 
  gather_object %>% 
  json_types %>% 
  count(name, type)

# Observamos que uno de los elemetos sigue siendo un array. Para ingresar dentro de ese array, tenemos que:
worldbank %>%
  enter_object(majorsector_percent) %>%
  gather_array %>%
  spread_all %>%
  select(-document.id, -array.index)

# Si buscamos la inversión promedio para las diferentes zonas macroeconómicas
# Revisar el pipeline paso a paso
worldbank %>%
  spread_all %>% 
  select(region = regionname, funding = totalamt) %>%
  enter_object(majorsector_percent) %>% 
  gather_array() %>% 
  spread_all() %>% 
  rename(sector = Name, percent = Percent) %>%
  group_by(region, sector) %>%
  summarize(funding = mean(percent, na.rm = TRUE))

# EJERCICIO
# Gráfica de barras con las áreas geográficas en el eje X, el promedio de inversiones en el Y y con colores para cada sector de inversión (quitando "Other")

# * Desde XML -------------------------------------------------------------
# https://megapteraphile.wordpress.com/2020/03/29/converting-xml-to-tibble-in-r/
library(tidyverse)
library(XML)
library(xml2)

# Directo desde la web
file_url <- "https://www.w3schools.com/xml/simple.xml"
Data <- read_xml(file_url)

#Desde ficheros propios
#Data <- read_xml(x = "INPUT/DATA/simple.xml")

# `data` es un xml_document que contiene el contenido del documento xml, incluidas las etiquetas y el texto.
str(Data) # No mucha info porque no es tabular
Data

# la función `xmlParse()` del paquete XML, permite reconocer la gramática de xml y extraerla en formato xml.
Data_mxl <- xmlParse(Data)
Data_mxl

attributes(Data_mxl)

# ** De xml a data.frame --------------------------------------------------
# Usamos la función `xmlToDataFrame()` del paquete `XML`. 
DF_xml <- xmlToDataFrame(doc = Data_mxl, stringsAsFactors = FALSE)
DF_xml
str(DF_xml)

# Limpiamos y definimos correctamente las clases

DF_xml %>% 
  as_tibble() %>%
  transmute(
    name = factor(name),
    price_dollars = parse_number(price),
    description = description,
    calories = as.numeric(calories)
  )

# Creamos un objeto (intermedio)
Tibble_xml <- 
  DF_xml %>% 
  as_tibble() %>%
  transmute(
    name = factor(name),
    price_dollars = parse_number(price),
    description = description,
    calories = as.numeric(calories)
  )

Tibble_xml

# Graficamos
# Tibble_xml %>% 
#   ggplot(data = ., mapping = aes(x = name, y = price_dollars)) +
#   geom_bar(stat = "identity", aes(fill = calories))

Tibble_xml %>% 
  ggplot(data = ., mapping = aes(x = reorder(name, -price_dollars), y = price_dollars)) +
  geom_bar(stat = "identity", aes(fill = calories)) +
  scale_fill_gradient(low = "peachpuff", high = "red", space = "Lab", na.value = "grey50", guide = "colourbar",  aesthetics = "fill") +
  labs(x = "", y = "Precio (U.S. $)", fill = "Calorías") +
  scale_y_continuous(expand = expansion(mult = c(0, .1))) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust = 1))


# Sin necesidad de crear el objeto
DF_xml %>% 
  as_tibble() %>%
  transmute(
    name = factor(name),
    price_dollars = parse_number(price),
    description = description,
    calories = as.numeric(calories)
  ) %>% 
  ggplot(data = ., mapping = aes(x = reorder(name, -price_dollars), y = price_dollars)) +
  geom_bar(stat = "identity", aes(fill = calories)) +
  scale_fill_gradient(low = "peachpuff", high = "red", space = "Lab", na.value = "grey50", guide = "colourbar",  aesthetics = "fill") +
  labs(x = "", y = "Precio (U.S. $)", fill = "Calorías") +
  scale_y_continuous(expand = expansion(mult = c(0, .1))) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 60, vjust = 1, hjust = 1))

# Consultas RDF usando Tidyverse ------------------------------------------
# Paquete `rdflib`: Tools to Manipulate and Query Semantic Data // En https://cran.r-project.org/web/packages/rdflib/

# * Carga de Paquetes -----------------------------------------------------
library(rdflib)
library(dplyr)
library(tidyr)
library(tibble)
library(jsonld)


# * Set de datos ----------------------------------------------------------
# Trabajaremos con el set de datos `mtcars` en el que construiremos un triple

data(mtcars)
mtcars
colnames(mtcars)

# Creando los triples a partir de `mtcars`
mtcars %>% 
  rownames_to_column("Model") %>% 
  gather(attribute,measurement, -Model) %>% 
  head()

# Creamos el objeto car_triples
car_triples <- 
  mtcars %>% 
  rownames_to_column("Model") %>% 
  gather(attribute,measurement, -Model)

str(car_triples)

# No es un Tidy-dataset, porque:
# Primera columna `Model` --> *subject*
# Segunda columna `attribute` --> propiedad a ser medida ó *predicate*
# Tercera columna `measurement` --> valor medido ú *object*
# Call it key-property-value or subject-predicate-object


# * Uso de Identificadores URI/URL ----------------------------------------
# Transformamos la variable `Model` a un nivel mayor de abstracción, a un ID
car_triples <- 
  mtcars %>% 
  rownames_to_column("Model") %>% 
  rowid_to_column("subject") %>% 
  gather(predicate, object, -subject)

head(car_triples)
str(car_triples)

# Qué pasa si tenemos la misma tranformación con otro dataset? --> ejemplo `iris`
# Problema porque el subject (ID) no es único

data(iris)
str(iris)

# Creamos el objeto iris_triples
iris_triples <- 
  iris %>%
  rowid_to_column("subject") %>%
  gather(key = predicate, value = object, -subject)

head(iris_triples)


# ** Subject URI ----------------------------------------------------------
# Para evitar problemas en la WWW, referenciamos no con un ID, sino con una URI
# Así el ID 1 --> http://example.com/iris#1

# Reemplazamos el objeto
iris_triples <- 
  iris %>%
  rowid_to_column("subject") %>%
  mutate(subject = paste0("http://example.com/iris#", subject)) %>%
  gather(key = predicate, value = object, -subject)

head(iris_triples)


# ** Predicate URI -------------------------------------------------------
# Mismo concepto que aplica para sujetis, también aplica para predicados

iris_triples <- 
  iris %>%
  rowid_to_column("subject") %>%
  mutate(subject = paste0("http://example.com/iris#", subject)) %>%
  gather(key = predicate, value = object, -subject) %>%
  mutate(predicate = paste0("http://example.com/iris#", predicate)) %>% 
  mutate(object = as.numeric(object))

head(iris_triples)
str(iris_triples)

# ** Datatype URIs --------------------------------------------------------
# Todo parece bien, salvo que nuestro objeto (que deberían ser doubles) son character por una coercion
str(iris_triples)

# Para representar doubles en xml escquema y/o en RDF necesitamos ver https://www.w3.org/TR/rdf11-concepts/#section-Datatypes
# String --> http://www.w3.org/2001/XMLSchema#string
# Integer --> http://www.w3.org/2001/XMLSchema#integer
# Double debería ser "5.1"^^http://www.w3.org/2001/XMLSchema#double


# * Triples en el paquete rdflib ------------------------------------------
# Hasta ahora los triples eran "dataframes" acomodados
# el paquete `rdflib` agrega un objeto de clase `rdf`.

# ** Objeto rdf (en memoria) ----------------------------------------------
rdf1 <- rdf()

# Agregamos datos al modelo RDF (gráfico RDF) con rdf_add
# Necesitamos crear una URI base --> http://example.com/iris#

base <- "http://example.com/iris#"

rdf1 %>% 
  rdf_add(subject = paste0(base, "obs1"), 
          predicate = paste0(base, "Sepal.Length"), 
          object = 5.1)

rdf1

str(rdf1)

# ** Prefijos para las URIs (CURIE) ---------------------------------------
# Los namespace (en XML) pueden teenr un prefijo seguido de ":"
# Entonces si definimos a iris: como el equivalente a http://example.com/iris#
# Tendríamos iris:Sepal.Length, iris:Sepal.With

# ** URI v/s URL ----------------------------------------------------------
# URL --> uniform resource locator, aka web address
# URI --> uniform resource identifier --> puede ser una URL y más cosas (DOI, ISBN, etc.)

# ** Serialización --------------------------------------------------------
# El formato que hemos visto se denomina N-Quads
# Podemos serializar un objeto con la función `rdf_serialize()`
rdf1
?rdf_serialize()

# Ejemplo
doc <- system.file("extdata/example.rdf", package = "redland")
rdf1 <- rdf_parse(doc, format = "rdfxml") 
rdf1

# XML-based schema
options(rdf_print_format = "rdfxml")
rdf1

# TURTLE
options(rdf_print_format = "turtle")
rdf1

# JSON-LD
# “the thing in the curly braces,” (i.e. the JSON “object”)
options(rdf_print_format = "jsonld")
rdf1

# @id --> property
# @context --> define datatypes, use multiple namespaces, and permit different names in the JSON keys from that found in the URLs.

# Agregando un @context
rdf_serialize(rdf1, "example.json", "jsonld") %>% 
  jsonld_compact(context = '{"@vocab": "http://purl.org/dc/elements/1.1/"}')


# ** De tablas a Gráficos -------------------------------------------------
# No todos los set de datos pueden almacenarse en forma tabular (tidy)
# ej:
ex <- system.file("extdata/person.json", package = "rdflib")
cat(readLines(ex), sep = "\n")

# Serialización a N-Quads
options(rdf_print_format = "nquads")
ex
rdf2 <- rdf_parse(ex, "jsonld")
rdf2

# El `adress` se ha entregado como un nodo en blanco `_:b0`

# Esto mismo se conoce como una estructura "aplanada" (flattend)
jsonld_flatten(ex, context = "http://schema.org")

# Atención en la estructura típica de un JSON, anidada con los {} indicando un objeto raíz (superior)


# Podríamos regresar a la estructura anterior, entregando un marco que especifique qué tipo de archivo es el root
jsonld_flatten(ex) %>%
  jsonld_frame('{"@type": "http://schema.org/Person"}') %>%
  jsonld_compact(context = "http://schema.org")

# Las diferencias entre las 2 representaciones (nested/flattened) es solamente estética!



# ** Más ejemplos para crear RDFs -----------------------------------------
x1 <- as_rdf(iris, NULL, "iris:")
x1

x2 <- as_rdf(cars, NULL, "mtcars:")
x2

# Objeto grande RDF
rdf3 <- c(x1,x2)
rdf3
class(rdf3)
str(rdf3)

# * Volviendo a las Tablas -----------------------------------------------


# ** Consulta Usando SPARQL -----------------------------------------------
# generamos una consulta en SPARQL, definiendo un motor de búsqueda
library(SPARQL)
library(tidyverse)
library(rdflib)

sparql <-
  'SELECT  ?Species ?Sepal_Length ?Sepal_Width ?Petal_Length  ?Petal_Width
WHERE {
 ?s <iris:Species>  ?Species .
 ?s <iris:Sepal.Width>  ?Sepal_Width .
 ?s <iris:Sepal.Length>  ?Sepal_Length . 
 ?s <iris:Petal.Length>  ?Petal_Length .
 ?s <iris:Petal.Width>  ?Petal_Width 
}'

# Creamos un objeto que sea una consulta (siguiendo el motor de búsqueda), sobre un objeto RDF ya creado
# rdf3

iris2 <- rdf_query(rdf3, sparql)

iris2

# ** Consulta Usando tidy_schema del paquete rdflib -----------------------
# Cargamos la función
source(system.file("examples/tidy_schema.R", package = "rdflib"))
View(tidy_schema) # revisar el SPARQL interno

sparql_tidy <- tidy_schema("Species",  "Sepal.Length", "Sepal.Width", prefix = "iris")

iris3 <- rdf_query(rdf3, sparql_tidy)
iris3


# ** Consulta Usando dbpedia ----------------------------------------------
library(SPARQL)
library(tidyverse)

# Mirar el Query Editor online
endpoint <- "https://dbpedia.org/sparql"

# Query 1
query_example <- "SELECT * WHERE {
?athlete rdfs:label 'Alexia Putellas'@en
}"

QD <- SPARQL(url = endpoint, query = query_example)

str(QD)

DF <- as_tibble(QD$results)
DF

# Query 2
query_example <- "SELECT * WHERE {
?athlete rdfs:label 'Alexia Putellas'@en ;
  dbo:number  ?number .
}"

QD <- SPARQL(url = endpoint, query = query_example)

str(QD)

DF <- as_tibble(QD$results)
DF

# Query 3
query_example <- "SELECT * WHERE {
?athlete rdfs:label 'Alexia Putellas'@en ;
  dbo:number  ?number ;
  dbo:birthPlace  ?place .
}"

QD <- SPARQL(url = endpoint, query = query_example)

str(QD)

DF <- as_tibble(QD$results)
DF$place



# ** Consulta Usando Wikidata ---------------------------------------------
# https://github.com/wikimedia/WikidataQueryServiceR
install.packages("WikidataQueryServiceR")

library(WikidataQueryServiceR)

?WDQS 
# https://www.wikidata.org/wiki/Wikidata:SPARQL_query_service/queries/examples

# Ejemplo: obtención de los géneros de una película determinada. En este ejemplo, buscamos una "instancia de" (P31) "película" (Q11424) que tenga la etiqueta "La cabaña en el bosque" (Q45394), obtenemos sus géneros (P136) y, a continuación, utilizamos el servicio de etiquetas WDQS para devolver las etiquetas de género.

pelis <- query_wikidata('SELECT DISTINCT
  ?genre ?genreLabel
WHERE {
  ?film wdt:P31 wd:Q11424.
  ?film rdfs:label "The Cabin in the Woods"@en.
  ?film wdt:P136 ?genre.
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}')

pelis
str(pelis)

# https://www.wikidata.org/wiki/Wikidata:SPARQL_query_service/queries/examples
# Esta consulta busca todos los artículos cuyo valor de instancia de (P31) es gato doméstico (Q146). Utiliza el servicio wikibase:label para devolver las etiquetas en su idioma por defecto o en inglés.

gatos <- query_wikidata('SELECT 
                        ?item ?itemLabel
                        WHERE {
                        ?item wdt:P31 wd:Q146. # Must be of a cat
                        SERVICE wikibase:label { bd:serviceParam wikibase:language "[AUTO_LANGUAGE], en". } # Helps get the label in your language, if not, then en language
                      }')

gatos

# Referencias -------------------------------------------------------------
# https://adv-r.hadley.nz/index.html
# https://rstudio-education.github.io/hopr/
# https://r4ds.had.co.nz/
# https://dplyr.tidyverse.org/
# https://ggplot2.tidyverse.org/index.html