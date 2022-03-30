

# 1. Cargar paquetes ------------------------------------------------------

pacman::p_load(tidyverse,
               haven,
               sjPlot,
               ggplot2, 
               sjmisc,
               lubridate,
               sjlabelled)


# 2. Cargar datos ---------------------------------------------------------

sup_i <- read_dta("input/supervision_indirecta/Sup_I_VII_EME.dta")


# 3. Explorar datos -------------------------------------------------------

# 3.1 Revisar variables

view_df(sup_i)

# PRECARGA RESULTADO ENCUESTA (MÓDULO ENCARGADO/A DE GRUPO)

frq(sup_i$REG_CDF)
frq(sup_i$REG_SUPE) # es necesario supervisar la encuesta/cuantas supervisiones se hicieron
frq(sup_i$REG_RAZON) # razones de supervisión

# MÓDULO A: ANTECEDENTES GENERALES

frq(sup_i$SI_1) # contestó la EME/falsificación de encuestas
frq(sup_i$SI_2) # realizaba actividad independiente en mes de referencia/elegibilidad del informante
frq(sup_i$SI_3) # mantenía residencia en mes de referencia
frq(sup_i$SI_4) # recolector tenía elementos de protección/rigurosidad del levantamiento
frq(sup_i$SI_5) # respondió telefónicamente/
frq(sup_i$SI_6) # duración entrevista

# Cruce de datos entre "precarga respuestas recolección" con "Módulo A: Antecedentes generales"

sjt.xtab(sup_i$SI_2, sup_i$a3,
         show.col.prc = TRUE,
         show.summary = FALSE,
         encoding = "UTF-8",
         title = "cruce1")




# MÓDULO B: SUPERVISIÓN INFORMANTES QUE CAMBIAN DE SITUACIÓN OCUPACIONAL (A1=3 & A3!=9)

frq(sup_i$a1)

# práctica 

sjt.xtab(sup_i$SI_1, sup_i$a1,
         show.col.prc = TRUE,
         show.summary = FALSE,
         encoding = "UTF-8",
         title = "cruce1")

