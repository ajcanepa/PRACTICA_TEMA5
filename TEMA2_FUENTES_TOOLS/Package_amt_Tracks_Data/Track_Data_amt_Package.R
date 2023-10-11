# Instalacion paquete amt -------------------------------------------------
# https://cran.r-project.org/web/packages/amt/vignettes/p1_getting_started.html
install.packages("amt")

# Carga de Paquetes -------------------------------------------------------
library(tidyverse)
library(amt)


# TRACKS ------------------------------------------------------------------
# Los componentes básicos de amt son los tracks. Los tracks son tibbles con al menos dos columnas que contienen las coordenadas: x_ e y_.
# Crear Tracks con algunas ubicaciones ficticias.
df1 <- tibble(x = 1:3, y = 1:3)
is.data.frame(df1)


df1

# Now we can create a track
tr1 <- make_track(df1, x, y)
is.data.frame(tr1)

tr1

class(tr1)

# At the moment amt supports two types of tracks:
# track_xy is a track that only has coordinates, and
# track_xyt is a track that has a timestamp associated to each coordinate pair.

#To create a track_xyt we could do the following
df1 <- tibble(x = 1:3, y = 1:3, t = lubridate::ymd("2017-01-01") + lubridate::days(0:2))
tr2 <- make_track(df1, x, y, t)
class(tr2)

tr2

# * Datos Reales ------------------------------------------------------------
data("sh")
head(sh)

# # check if all observations are complete
summary(sh)
all(complete.cases(sh)) # no action required


# parse date and time and create time stamps
sh$ts <- as.POSIXct(lubridate::ymd(sh$day) +
                      lubridate::hms(sh$time))

# check for duplicated time stamps
any(duplicated(sh$ts))

# We have some duplicated time stamps, these need to be removed prior to
# creating a track.
sh <- sh[!duplicated(sh$ts), ]

# create new columns
sh$id <- "Animal 1"
sh$month <- lubridate::month(sh$ts)

head(sh)
str(sh)

#Now we can create a track.
tr1 <- make_track(sh, x_epsg31467, y_epsg31467, ts, id = id, month = month)


# We can also create a track with a proper coordinate reference system (CRS) (EPSG code).
tr1 <- make_track(sh, x_epsg31467, y_epsg31467, ts, id = id, month = month, 
                  crs = 31467)
tr1


# * Usando tuberías ---------------------------------------------------------
# data(sh)
tr2 <- 
  sh  %>%  filter(complete.cases(sh))  %>%  
  mutate(
    ts = as.POSIXct(lubridate::ymd(day) + lubridate::hms(time)), 
    id = "Animal 1", 
    month = lubridate::month(ts)
  ) %>% 
  filter(!duplicated(ts)) %>% 
  make_track(x_epsg31467, y_epsg31467, ts, id = id, month = month, 
             crs = 31467)

tr2


# Trabajando con los Tracks -----------------------------------------------
# Todos los tracks de Mayo (month == 5)
tr3 <- tr2  %>% filter(month == 5)
tr3

# Las clases se heredan 
class(tr3)

# Transformación de coordenadas
# Transformaremos el sistema de coordenadas de referencia (CRS) de tr2 en coordenadas geográficas (EPSG:4326).
transform_coords(tr2, 4326)

# Longitud de los trayectos en el transectos (en metros)
tr2 <- 
  tr2  %>%
  mutate(sl_ = step_lengths(tr2))

summary(tr2$sl_) # NA porque es el último transecto y no tuvo punto final (inconcluso)

# Manipulación tasa de muestreo
summarize_sampling_rate(tr2)

# Nos quedaremos con aquellas tracks de 6 horas de duración (+- unos 20minutos)
tr3 <-
  tr2  %>% 
  track_resample(rate = hours(6), tolerance = minutes(20))

tr3
summary(tr3)
table(tr3$id)
table(tr3$burst_)

# Una ráfaga es una secuencia de traslados con frecuencias de muestreo iguales
tr3 %>% 
  ggplot(., aes(x = burst_)) +
  geom_bar()

# Analisis de multiples objetos -------------------------------------------
data("amt_fisher")
amt_fisher
class(amt_fisher)
table(amt_fisher$name)
table(amt_fisher$id)

# creación de un track
trk <- 
  amt_fisher %>% 
  make_track(x_, y_, t_, id = id)

trk

table(trk$id)
# Crearemos un tibble donde un atributo será una lista
trk1 <- 
  trk %>% 
  nest(data = -"id")

trk1

# Ahora vamos a remuestrear cada pista a 30 minutos con una tolerancia de 5 minutos y crear pasos para cada sujeto.
# Para el primer sujeto haríamos lo siguiente:

# Obtener los datos del primer animal 
x <- trk1$data[[1]]

# Aplica el re-muetsreo
x  %>% 
  track_resample(rate = minutes(30), tolerance = minutes(5))  %>% 
  steps_by_burst()

# Aplicamos exactamente la misma lógica a todos los sujetos.
# Podemos hacerlo utilizando map y guardar los resultados en una nueva columna utilizando mutate.
trk2 <-
  trk1  %>%  
  mutate(steps = map(data, function(x) 
    x  %>%  track_resample(rate = minutes(30), tolerance = minutes(5))  %>%  steps_by_burst()))

trk2

# Por último, podemos seleccionar id y pasos, anidar el nuevo data_frame y crear un gráfico de las distribuciones de longitud de paso.
trk2  %>% 
  select(id, steps) %>% 
  unnest(cols = steps) %>%  
  ggplot(aes(sl_, fill = factor(id))) + geom_density(alpha = 0.4) +
  labs(fill = "Subjects", x = "Steps length") +
  theme_bw()
