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
