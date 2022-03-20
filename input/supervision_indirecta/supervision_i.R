
# 1. cargar paquetes

pacman::p_load(dplyr,
               sjmisc,
               car,
               sjlabelled,
               stargazer,
               sjPlot)

2. cargar base de datos

rm(list=ls())       # borrar todos los objetos en el espacio de trabajo
options(scipen=999) # valores sin notación científica


sup_i <- haven::read_dta("input/supervision_indirecta/Sup_I_VII_EME.dta")


dim(sup_i)
view_df(sup_i)

frq(sup_i$a1) # frecuencia mantención de actividad laboral
frq(sup_i$a3)
frq(sup_i$c1) # en este caso, hacer una tabla de frecuencia no es relevante porque es una variable categórica. Cada observación por sí misma, entonces, va a ser un porcentaje de la misma

str(sup_i)
frq(sup_i$c9) # donde realiza su actividad
frq(sup_i$SI_A8_ESP)
frq(sup_i$SI_A8)
frq(sup_i$SI_C1)
frq(sup_i$SI_C1_V) # respuesta cocincide con la entregada al encuestador?
frq(sup_i$SI_C1_ESP)





