
require("dplyr")
library(stringr)
# Formateando la data
  ## Lectura del input csv
  dfcalidad <- read.csv("resources/calidad1.csv")

  ## Eliminamos la columna Type = Ig, ya que es solo informativa
  dfcalidad <- dfcalidad[dfcalidad$Type != 'Ig', ]

  ## Cambiamos los valores para un mejor reconocimiento
  dfcalidad$Type[dfcalidad$Type == 'Vuln'] <- 'Confirmed'
  dfcalidad$Type[dfcalidad$Type == 'Practice'] <- 'Potencial'

  ## Renombramos algunos campos para mejor reconocimiento
  dfcalidad <- rename(dfcalidad, Hostname = DNS, 'Vulnerability Type' = Type)

  ## Ordenamos la data por Vulnerability Type y Severity
  dfcalidad <- arrange(dfcalidad,`Vulnerability Type`, Severity)

  ## Severidad
  ## Creamos una nueva columna que almacenará la severidad de forma cualitativa
  dfcalidad$Severidad <- ''

  ## Procesamos la variable Severidad 1 y 2 = Baja, 3 = Media, 4 = Alta y 5 = Crítica
  dfcalidad$Severidad[dfcalidad$Severity == 1.0] <- 'Baja'
  dfcalidad$Severidad[dfcalidad$Severity == 2.0] <- 'Baja'
  dfcalidad$Severidad[dfcalidad$Severity == 3.0] <- 'Media'
  dfcalidad$Severidad[dfcalidad$Severity == 4.0] <- 'Alta'
  dfcalidad$Severidad[dfcalidad$Severity == 5.0] <- 'Crítica'
  dfcalidad$Severidad[is.na(dfcalidad$Severity)] <- 'No Registrada'

  dfSeveridad <- dfcalidad %>% group_by(Severidad) %>% summarise(value = n())
  dfSeveridad <- rename(dfSeveridad, id = Severidad)

  ## Explotables
  ## Creamos una nueva columna que almacenará información si la vulnerabilidad encontrada es explotable
  dfcalidad$Explotable <- ''
  dfcalidad$Explotable[dfcalidad$Exploitability == ''] <- 'No'
  dfcalidad$Explotable[dfcalidad$Exploitability != ''] <- 'Si'

  dfExplotable <- dfcalidad %>% group_by(IP, Explotable) %>% summarise(Total = n())
  dfExplotable <- dfExplotable[dfExplotable$Explotable == 'Si',]
  dfExplotable <- arrange(dfExplotable, -Total)
  dfExplotable <- dfExplotable[1:10,]
  dfExplotable <- dfExplotable[, -2]

## Parches pendientes
  dfcalidad$parche <- ''
  dfcalidad$parche[grepl("patch", dfcalidad$Solution, ignore.case = TRUE)] <- 'Pendiente'
  dfcalidad$parche[!grepl("patch", dfcalidad$Solution, ignore.case = TRUE)] <- 'No Encontrado'

  dfParches <- dfcalidad %>% group_by(parche) %>% summarise(Total = n())
  # dfParches <- dfParches[dfParches$parche == 'Si',]
  # dfExplotable <- arrange(dfExplotable, -Total)
  # dfExplotable <- dfExplotable[1:10,]
  # dfExplotable <- dfExplotable[, -2]

  ## Guardamos el archivo de salida
  write.csv(dfcalidad,"output/procesado.csv", row.names = TRUE)

