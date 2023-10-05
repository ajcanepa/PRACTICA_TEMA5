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



