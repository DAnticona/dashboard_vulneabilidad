require("dplyr")
dfcalidad <- read.csv("resources/calidad1.csv")

dfcalidad = dfcalidad[dfcalidad$Type != 'Ig', ]
dfcalidad$Type[dfcalidad$Type == 'Vuln'] <- 'Confirmed'
dfcalidad$Type[dfcalidad$Type == 'Practice'] <- 'Potencial'


dfcalidad <- rename(dfcalidad, Hostname = DNS, 'Vulnerability Type' = Type)
dfcalidad <- arrange(dfcalidad,`Vulnerability Type`, Severity)

dfcalidad$Severidad <- ''

dfcalidad$Severidad[dfcalidad$Severity == 1.0] <- 'Baja'
dfcalidad$Severidad[dfcalidad$Severity == 2.0] <- 'Baja'
dfcalidad$Severidad[dfcalidad$Severity == 3.0] <- 'Media'
dfcalidad$Severidad[dfcalidad$Severity == 4.0] <- 'Alta'
dfcalidad$Severidad[dfcalidad$Severity == 5.0] <- 'Crítica'

dfcalidad$Hostname[dfcalidad$Hostname == 'No registered hostname'] <- ''
write.csv(dfcalidad,"procesado.csv", row.names = TRUE)

