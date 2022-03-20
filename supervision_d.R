

# 1. cargar paquetes

pacman::p_load(dplyr,
               sjmisc,
               car,
               sjlabelled,
               stargazer,
               sjPlot,
               haven)

# 2. cargar base de datos

sup_d <- haven::read_dta("input/supervision_directa/Sup_D_VII_EME.dta")

# 3. explorar datos

dim(sup_d)
view_df(sup_d)

frq(sup_d$SD_A5)
