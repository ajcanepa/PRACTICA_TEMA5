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

