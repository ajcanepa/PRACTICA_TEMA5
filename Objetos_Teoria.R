x <- c(1,2,3,4,5,6,7L)
print(x)
dim(x)

y <- x
is.vector(y)
class(y)
typeof(y)

# Para crear una matriz podemos usar la siguiente función.
Matrix <- matrix(c(1,2,3,4,5,6,7,10,20,30,40,50,60,70), nrow = 7, ncol = 2, byrow = FALSE)

Matrix

Matrix[3, ]
class(Matrix[,2])


Calculo <- c(20, 40, 60, 50)/10
DF <-
  data.frame(Year = c(20, 40, 60, 50),
             Name = c("Pedro", "María", "Tomás", "Nieves"),
             Month = Calculo)
print(DF)

class(DF)
class(DF[1])




DF2 <- tibble::tibble(
  Year = c(20, 40, 60, 50),
  Name = c("Pedro", "María", "Tomás", "Nieves"),
  Month = Year / 10
)

DF2
class(DF2[1])
class(DF2)

DF2[1]
DF2$Name

DF$Year[DF$Name == "Pedro"]

Lista <- list(
  Vec_Num = x,
  Vec_Char = as.character(y),
  Mat = Matrix,
  DataFrame = DF
)

Lista$DataFrame$Name[3]


data(mtcars)
mtcars

RegLi <- lm(mpg ~ disp + cyl + wt, data = mtcars)
summary(RegLi)



x <- c(1,2,3)
x2 <- c(1,2,3, 4)

y <- sin(x)

mean(x, na.rm = TRUE)


x2 + y


presion_arterial <- 100

if (presion_arterial > 140) {
  categoria <- "Alta"
} else {
  categoria <- "Normal"
}

print(categoria)

presion_sistolica <- c(120, 130, 110, 140, 135, 150)
edad_grupo <- c("Joven", "Adulto", "Joven", "Adulto", "Adulto", "Adulto")

media_presion <- tapply(presion_sistolica, edad_grupo, mean)

print(media_presion)


presion <- 280
objetivo <- 120
dias <- 0

while (presion > objetivo) {
  presion <- presion - 5
  dias <- dias + 1
}

dias
print(dias) 


alturas <- c(1.70, 1.75, 1.60, 1.75)
pesos <- c(65, 75, 50, 83)
imc <- numeric(length(alturas))

for (i in 1:3) {
  imc[i] <- pesos[i] / alturas[i]^2
}

for (i in 1:length(alturas)) {
  imc[i] <- pesos[i] / alturas[i]^2
}

print(imc)
<<<<<<< HEAD
=======


# FUNCIONES ---------------------------------------------------------------

sumar <- function(x, y){
  
  x + y
  
}

# llamar a la funcion (desde entorno de trabajo)
sumar

# ejecutar
sumar(x = 5, y = 5)

sumar(x = c(1,2,3,4), y = 5)


# Definiendo un tipo de operación
calcular <- function(x, y, type) {
  if (type == "sumar") {
    x + y
  } else if (type == "restar") {
    x - y
  } else if (type == "multiplicar") {
    x * y
  } else if (type == "dividir") {
    x / y
  } else {
    stop("Tipo de operación desconocida")
  }
}


calcular

calcular(x = 23, y = 14, type = "ecualizar")

# Argumentos por defecto
calcular <- function(x, y, type = "sumar") {
  if (type == "sumar") {
    x + y
  } else if (type == "restar") {
    x - y
  } else if (type == "multiplicar") {
    x * y
  } else if (type == "dividir") {
    x / y
  } else {
    stop("Tipo de operación desconocida")
  }
}


calcular(7,3)


# Importando/argando una función
source("calcular.R")

calcular(7,3)
>>>>>>> bdf1daf3d6a79177dcd12e61bd32629b662729c2
