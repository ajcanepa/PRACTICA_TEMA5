# PRACTICAS "Fuentes de Datos Biomédicos" <img src='INPUT/IMAGES/Logo_Curso_Fuente_Datos_Biomedicas_Web_Semantica.png' align="right" height="120" />

Repositorio en el que se desarrollará el código de las prácticas de la asignatura "Fuentes de Datos Biomédicos y Web Semánticas", del grado de [Ingeniería de la Salud](https://www.ubu.es/grado-en-ingenieria-de-la-salud), de la [Universidad de Burgos](https://www.ubu.es).

Más información en la [página del curso](https://ubuvirtual.ubu.es/course/view.php?id=14468) y a lo largo de las secciones de este `README`.

***

## Seminarios
La idea detrás de los seminarios busca fortalecer el uso de fuentes biomédicas y su acceso, preprocesamiento y visualización usando herramientas analíticas, __como R__, para dilucidar el efecto de estresores ambientales sobre la salud humana (__Biometereología Humana__). Puedes ver más ejemplos en el [MCC Collaborative Research Network](https://mccstudy.lshtm.ac.uk/).

A modo de ejemplo, os dejo unos enlaces a algunos seminarios previos que han sido bien (o muy bien) evaluados en la siguiente sección [Hall of Fame - Seminarios](#hall-of-fame---seminarios)

### Estructura del Seminario
La entrega se basa en dos archivos y un repostorio que se solicitarán como mecanismo de evaluación del tercer control parcial (evaluación contínua). Los archivos que tendréis que entregar son: 

* __*i)*__ Archivo RMarkdown (Cuaderno de R) que contendrá tanto el texto como el código empleado en el seminario. Es de extensión `.Rmd`, 
* __*ii*__) Archivo *HyperText Markup Language (__HTML__)*, de extensión `.html` que contendrá el seminario *renderizado*, es decir se unirá tanto el texto como el código y sus resultados (*i.e.* tablas, figuras, etc.) y 
* __*iii*__) La dirección `url` del repositorio en github donde habéis desarrollado el seminario.

La estructura del seminario contará con los identificadores básicos del seminario como es el `título`, los `autores` y `curso` al que corresponde y con los siguientes apartados específicos:

* __Introducción__: contextualiza la idea del seminario, entrega una idea general de la temática, de lo que se sabe y sobre todo de lo que no se sabe y queréis abordar en vuestro trabajo.
* __Objetivo general__: en una frase un objetivo claro y general que muestre muy claramente la relación entre variables que váis a buscar/relacionar.
* __Objetivos específicos__: tres o cuatro preguntas específicas que permiten responder el objetivo general. Normalmente, se corresponden con la descripción y caracterización (espacial, temporal, etc.) de las variables de interés con las que se trabaja en el seminario y por una o dos preguntas en las que la relación y/o correlación entre estas variables se llevará a cabo (ojo la falta de relación y/o correlación también es un resultado admisible en este seminario).
* __Metodología y Resultados__: para cada objetivo específico se entregará el código y las representaciones necesarias (tablas, figuras, etc) que permitan responder al objetivo específico en cuestión.
* __Conclusiones generales__: podréis generar conocimiento nuevo con vuestro seminario y es en este apartado donde váis a detallarlo de manera concisa y reconiendo sus limitaciones.
* __Referencias__: listado de las referencias utilizadas en el seminario (intentad que sean en formato APA) que os permitirán escribir la introducción y ver lo importante o no de vuestras conclusiones generales.


### Baremo de Calificación
Para la entrega, deberéis fijaros en: 

*  __i)__ como luce el repositorio,
*  __ii)__ cómo luce el readme o "*landing page*",
*  __iii)__ cómo luce la estructura de archivos y carpetas dentro del repositorio y
*  __iv)__ descargar y abrir (por fuera de github) el documento __*.html__ que han desarrollado para ver bien cómo han resuelto este seminario.



***

### Hall of Fame - Seminarios

##### Edición 2023-2024
*  [Necesidad de Atención Psicológica (NAT) en España](https://github.com/Lorenacalvoperez/PRACTICAS_FUENTES_C)
*  [Análisis estadístico sobre relación entre sedentarismo y uso de audífonos/gafas](https://github.com/jbs1009/Seminario_Daniel_Jorge_Antonia)


##### Edición 2022-2023
*  [Suicidios, desigualdad económica e inaccesibilidad a servicios sanitarios](https://github.com/Mps1013/SeminarioFuentes)
*  [Relación entre Paro y Suicidio](https://github.com/paulamart/SeminarioFuentes)

##### Edición 2021-2022
*  [Actividad Fisica, Zonas Verdes y Salud Mental](https://github.com/VeraGD/Actividad_Fisica)
*  [Cambio climático y enfermedades cardiovasculares](https://github.com/SamuelLozanoJuarez/Cambio_climatico_y_ECV)
*  [Suicidio, clima y desarrollo global](https://github.com/imb1006/Suicidio-clima-y-desarrollo-global)
*  [Inaccesibilidad-sanitaria-y-efectos-en-salud](https://github.com/albamiguel/Inaccesibilidad-sanitaria-y-efectos-en-salud)

***
## Recursos para `R` , `Tidyverse` y `Fuentes de Datos`

### Repositorios oficiales de R
*  [The Comprehensive R Archive Network](https://cran.r-project.org/)
*  [Bioconductor](https://www.bioconductor.org/)
*  [ROpenScience](https://ropensci.org/)
*  [ROpenSpain](https://ropenspain.es/)

### Programación
*  [R for Data Science](https://r4ds.hadley.nz/)
*  [R Para Ciencia de Datos](https://es.r4ds.hadley.nz/)
*  [Fundamentos de ciencia de datos con R](https://cdr-book.github.io/index.html)
*  [R Programming for Data Science](https://bookdown.org/rdpeng/rprogdatascience/)
*  [R Avanzado](https://davidrsch.github.io/adv-res/)
*  [Advanced R](https://adv-r.hadley.nz/)
*  [fasteR: Fast Lane to Learning R!](https://github.com/matloff/fasteR)
*  [Big Book of R](https://www.bigbookofr.com/)
*  [The tidyverse style guide](https://style.tidyverse.org/index.html)

### Control de Versiones (R/RStudio and Git/Github)
* [Cómo usar Git/GitHub con R](http://destio.us.es/calvo/asignaturas/ge_esco/tutorialusargitgithubrstudio/UsarGitGithubconRStudio.html)
* [Chapter 4 Git, in:Reproducible Analytical Pipelines ](https://b-rodrigues.github.io/rap4mads/git.html)
* [Connect RStudio to Git and GitHub](https://happygitwithr.com/rstudio-git-github)
* [Happy Git and GitHub for the useR](https://happygitwithr.com/)
* [Cómo vincular y usar Git con RStudio](https://anderfernandez.com/blog/como-vincular-y-usar-git-con-rstudio/)
* [Git y GitHub con R](https://rpubs.com/RonaldoAnticona/818156)

### Communicación
##### Gráficos
*  [The R Graph Gallery](https://r-graph-gallery.com/)
*  [ggplot2: Elegant Graphics for Data Analysis](https://ggplot2-book.org/)
*  [ggplot2 extensions](https://exts.ggplot2.tidyverse.org/)
*  [awesome-r-dataviz](https://krzjoa.github.io/awesome-r-dataviz/)
*  [R Graphics Cookbook](https://r-graphics.org/)

##### Documentos
*  [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
*  [R Markdown Cookbook](https://bookdown.org/yihui/rmarkdown-cookbook/)
*  [The bookdown package](https://bookdown.org/)
*  [Introducción al uso de RMarkdown](https://bookdown.org/gboccardo/manual-ED-UCH/introduccion-al-uso-de-rmarkdown-para-la-compilacion-de-resultados-de-rstudio-en-diferentes-formatos.html)
*  [Cómo crear Tablas de información en R Markdown](http://destio.us.es/calvo/Qficheros/ComoCrearTablasRMarkdown_PedroLuque_2019Sep_librodigital.pdf)

##### Aplicaciones (APPs)
*  [Shiny](https://shiny.posit.co/r/getstarted/shiny-basics/lesson1/index.html)
*  [Mastering Shiny](https://mastering-shiny.org/)
*  [shinydashboard](https://rstudio.github.io/shinydashboard/index.html)

### Estadística y meta-análisis
*  [An Introduction to Statistical Learning](https://www.statlearning.com/)
*  [Doing Meta-Analysis with R](https://bookdown.org/MathiasHarrer/Doing_Meta_Analysis_in_R/)
*  [Modern Statistics with R](https://www.modernstatisticswithr.com/)

### Ómicas y Salud
*  [The Epidemiologist R Handbook](https://epirhandbook.com/en/)
*  [R for Epidemiology](https://www.r4epi.com/)
*  [R for Health Data Science](https://argoshare.is.ed.ac.uk/healthyr_book/)
*  [Sequence Analysis in R and Bioconductor](https://girke.bioinformatics.ucr.edu/GEN242/tutorials/rsequences/rsequences/)
*  [Little Book of R for Bioinformatics](https://a-little-book-of-r-for-bioinformatics.readthedocs.io/en/latest/)
*  [CRAN Task View: Genomics, Proteomics, Metabolomics, Transcriptomics, and Other Omics](https://cran.r-project.org/web/views/Omics.html)

### Machine Learning & R
*  [The caret Package](https://topepo.github.io/caret/index.html)
*  [Tidy Modeling with R](https://www.tmwr.org/)
*  [Building Reproducible Analytical Pipelines](https://rap4mads.eu/)
*  [Applied Machine Learning Using mlr3 in R](https://mlr3book.mlr-org.com/)
*  [Models Demystified](https://m-clark.github.io/book-of-models/)

### Formación
*  [Máster en Data Science & Business Analytics (con R software)](https://blog.uclm.es/tp-mbsba/)

### Comunidades
*  [R Consortium](https://www.r-consortium.org/)
*  [R Ladies](https://rladies.org/)
*  [R-Ladies Madrid (X)](https://twitter.com/RLadiesMAD)
*  [R-Ladies Barcelona (X)](https://twitter.com/RLadiesBCN)
*  [R-Ladies Bilbao (X)](https://twitter.com/RLadiesBIO)
*  [Comunidad R-Hispano](http://r-es.org/)

### Noticias 
*  [R-Project](https://www.r-project.org/)
*  [R-Bloggers](https://www.r-bloggers.com/)
*  [Revolutions](https://blog.revolutionanalytics.com/)
*  [II Congreso de R en España-Barcelona, 2023](https://eventum.upf.edu/101896/programme/ii-conference-of-r-and-xiii-workshop-for-r-users.html)
*  [III Congreso & XIV Jornadas de Usuarios de R, Sevilla - 2024](https://www.imus.us.es/congresos/IIIRqueR/)

### Publicaciones científicas sobre este lenguaje
*  [Ten simple rules for teaching yourself R](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1010372)
*  [R generation](https://rss.onlinelibrary.wiley.com/doi/full/10.1111/j.1740-9713.2018.01169.x)
*  [Expansion and evolution of the R programming language](https://royalsocietypublishing.org/doi/10.1098/rsos.221550)
*  [The Evolution of the R Software Ecosystem](https://ieeexplore.ieee.org/document/6498472)
*  [Evolution of the R software ecosystem](https://www.sciencedirect.com/science/article/pii/S0164121217301371)
*  [Programming tools: Adventures with R](https://www.nature.com/articles/517109a)

***

### Fuentes de Datos Abiertos
* [Datos abiertos Gob. España](https://datos.gob.es/es/catalogo) / [`opendataes`](https://github.com/rOpenSpain/opendataes)
* [Datos abiertos CyL](https://datosabiertos.jcyl.es/web/es/datos-abiertos-castilla-leon.html) / [`opendataes`](https://github.com/rOpenSpain/opendataes)
* [Calidad de Aire - JCyL](https://servicios.jcyl.es/esco/index.action)
* [Datos espaciales de hospitales](https://opendata.esri.es/datasets/ComunidadSIG::hospitales-de-espa%C3%B1a/about)
* [INE (Instituto Nacional de Estadística) package](https://inebaser.wordpress.com/)
* [INE - Encuesta de morbilidad hospitalaria](https://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736176778&menu=resultados&idp=1254735573175#_tabs-1254736194704)
* [INE - Lista completa](https://www.ine.es/dyngs/INEbase/es/listaoperaciones.htm)
* [rOpenSpain community](https://ropenspain.es/) / [GitHub-Repo](https://github.com/rOpenSpain)
* [European Health Information Initiative (EHII)](https://www.euro.who.int/en/data-and-evidence/european-health-information-initiative-ehii)
* [World Health Organization (WHO)](https://www.who.int/data)
* [World Health Organization - Health Observatory](https://www.who.int/data/gho)
* [rOpenHealth](https://github.com/rOpenHealth)
* [European Environment Agency](https://www.eea.europa.eu/en)
* [European Environment Agency - Datahub](https://www.eea.europa.eu/en/datahub?size=n_10_n&filters%5B0%5D%5Bfield%5D=issued.date&filters%5B0%5D%5Btype%5D=any&filters%5B0%5D%5Bvalues%5D%5B0%5D=All%20time)
* [greenR: An R Package for Quantifying Urban Greenness](https://github.com/sachit27/greenR)
* [CAMS European air quality reanalyses](https://ads.atmosphere.copernicus.eu/cdsapp#!/dataset/cams-europe-air-quality-reanalyses?tab=overview)
* [Water Quality ICM](https://www.eea.europa.eu/en/datahub/datahubitem-view/fbf3717c-cd7b-4785-933a-d0cf510542e1)
* [World Bank Water Data](https://wbwaterdata.org/dataset/)
* [Datos Kaggle](https://www.kaggle.com/datasets).
* [Google Environmental Insights Explorer](https://insights.sustainability.google/?hl=en-US).
* [ European Cancer Information System](https://ecis.jrc.ec.europa.eu/en)

***
