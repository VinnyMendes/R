library(readr)

data <- read.csv2('./Cópia de vazao_canal_estatistica.csv')
data

summary(data)

media_vazao <- mean(data$Vazão.l.s.)
media_volume <- mean(data$volume..l.)
media_tempo <- mean(data$tempo..s.)

mediana_vazao <- median(data$Vazão.l.s.)

## Média aparada
mean(data$Vazão.l.s., trim=0.1)
help(mean)

data$desvios <- 0
nlinhas <- nrow(data)
for(i in 1:nlinhas){data$desvios[i] <- data$volume..l.[i]-media_volume}
data
