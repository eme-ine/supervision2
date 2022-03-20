
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


names(sup_i)

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


class(sup_i$SI_F2)
class(sup_i$MUESTRA_COMPLEMENTO) # character
class(sup_i$a8)
class(sup_i$SI_OBS) # character
class(sup_i$FECHA_CITA) # character
class(sup_i$SI_F2_A__4) # character
class(sup_i$SI_C9)
class(sup_i$REG_RAZON) # double: la variable al parecer es categórica, pero está codificada para su facilidad al digitar, supongo. Será que aquí deba transformarla?
class(sup_i$g14)
class(sup_i$conteo_hombres) # numeric 

frq(sup_i$gastos_d7) # interesante para ver en frq: quizás se podría recodificar en tramos

class(sup_i)


num_space <- c(1)
num_nospace <- c(1)
# ¿Es num_space igual a num_nospace?
num_space == num_nospace


class(sup_i$SI_C1_ESP)
frq(sup_i$SI_C1_ESP)


class(sup_i$SI_E11_3)
str(sup_i$SI_E11_3)
frq(sup_i$SI_E11_3)

is.double(sup_i$SI_E11_3)
is.integer(sup_i$interview__status)




class(sup_i$e11_2)

class(sup_i$REG_CDF)
class(sup_i$REG_RAZON)
class(sup_i$SI_HR5)
class(sup_i$	SI_C1_ESP)
class(sup_i$SI_C1_ESP)
class(sup_i$SI_ModD)
class(sup_i$SI_E11_2_ESP)

class(sup_i$SI_D5_2_V)
class(sup_i$OBS_CITA)
class(sup_i$interview__status)


class(sup_i$ingreso_fv)

mean(sup_i$ingreso_fv) # esta es una variable numeric, por qué no me deja hacer una media? por la falta de datos?
mean(sup_i$gasto_rba) # gasto mensual promedio RBA
class(sup_i$gasto_mp) 

mean(sup_i$gasto_mp) # gasto mensual promedio materias primas
mean(sup_i$gasto_mensual_d3) # gasto mensual promedio en los últimos 12 meses c(gasto_mp, gasto_sb, gasto_gd, gasto_sp, gasto_rba, gasto_ipp, gasto_otros)

frq(sup_i$gasto_mensual_d3)

mean(sup_i$ing_pa)
class(sup_i$ing_pa)

str(sup_i$ing_pa)



# indgando en preguntas solo de supervisión indirecta

frq(sup_i$SI_HR0) # aplicar alguna función para trabajar mejor con las fechas y horas
frq(sup_i$SI_HR1) # Modo de visita
frq(sup_i$SI_HR2) # tipo entrevistado
frq(sup_i$SI_HR3) # código de visita
frq(sup_i$SI_HR5) # Razón rechazo supervisión
frq(sup_i$SI_1) # Contesta EME 
frq(sup_i$SI_2) # Realizaba actividad independiente


descr(sup_i$SI_HR1)















