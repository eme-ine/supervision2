
# 1. cargar paquetes

pacman::p_load(dplyr,
               sjmisc,
               car,
               sjlabelled,
               stargazer,
               sjPlot,
               haven)

# 2. cargar base de datos

sup_i_inter <- haven::read_dta("input/supervision_indirecta/interview__actions.dta")

frq(sup_i_inter$date)
frq(sup_i_inter$time)
frq(sup_i_inter$action)
frq(sup_i_inter$originator)
frq(sup_i_inter$role)
frq(sup_i_inter$responsible__name)
frq(sup_i_inter$responsible__role)
