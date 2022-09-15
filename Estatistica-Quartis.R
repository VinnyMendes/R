library(readxl)
hiv <- read_excel("hiv.xls")
View(hiv)

summary(hiv)

library(tidyverse)
library(gridExtra)

range(hiv$idade)


library(ggplot2)

x <- c(15,20,21,28,32,50,70)
quantile(x, probs=c(0,.25,.5,.75,1))

boxplot(x)
  

library(readxl)
precipitacao <- read_excel("precipitacao.xls")
View(precipitacao)

precipitacao
y <- precipitacao$Chuva
quantile(y, prob=c(0,.25,.5,.75,1))
diff(range(precipitacao$Chuva))
boxplot(y)

par(bg = "lightblue")
histograma <- hist(y, main="Histograma das Chuvas", xlab = "Chuva", ylab="Frequência", col="darkblue",bg="black")

#mediana e media
#abline(v=c(median(y), mean(y)), col=c("red", "blue"),lwd=2)
#legend(x="topright", c("Mediana", "Media"), col=c("red","blue"),lty=c(1,1), lwd=c(2,2))

abline(v=c(quantile(y, probs=c(.25,.5,.75))), col=c("red", "blue", "green"),lwd=5)
abline(v=mean(y), col=c("orange"),lwd=2, lty=2)
legend(bg="white",x="topright", c("1º Quartil", "2º Quartil", "3º Quartil", "Média", "Normal"), col = c("red", "blue", "green", "orange","purple"),lty=c(1,1,1,2,1), lwd=c(2,2,2,2,2))

#colocando a normal no gráfico
xfit<-seq(min(y),max(y))
yfit<-dnorm(xfit,mean=mean(y),sd=sd(y))
yfit <- yfit*diff(histograma$mids[1:2])*length(y)
lines(xfit, yfit, col="purple", lwd=2)


var(y) #variancia da chuva
sd(y) #desvio padrão

sequencia = seq(-100, 3000)
sequencia
funcao = sequencia ^ 2 + 5* sequencia + 7
funcao

plot(sequencia, funcao)

mu=mean(y)
sigma= sd(y)

j = (1/(sigma*sqrt(2*pi)))*exp(-(((sequencia-mu)^2)/(2*sigma^2)))

plot(sequencia, j)


#prob = pnorm(b,mean = media, sd = sqrt(var)) - pnorm(a,mean = media, sd = sqrt(var))
#a variância é o quadrado do desvio padrão

#1 a
pnorm(5, 8, 2)

#1 b
b = 1 - pnorm(9.5, 8, 2)
pnorm(9.5, 8, 2)

#1 c
c = pnorm(10,8,2) - pnorm(7, 8, 2)
c

#1 d
d = qnorm(0.75, 8,2) #qnorm recebe a probabilidade como argumento

#2 a
1 - (pnorm(22.86 + 0.127, 22.86,0.0762) - pnorm(22.86 - 0.127, 22.86,0.0762))

#2 b
qnorm(0.005, 22.86, 0.0762) #limite de baixo

qnorm(0.995, 22.86, 0.0762) #limite de cima

#3 a
1 - pnorm(1.9, 1.8,0.1)

#3 b
qnorm(0.3, 1.8, 0.1)

#4 a
pnorm(72, 70, 4) - pnorm(62, 70,4)

#4 b #valor de c tem que ser 7.83986
qnorm(0.025, 70, 4)
qnorm(0.975, 70, 4)
70 - c = 62
c <- 70 - 62.16014
c2 <- 77.83986 - 70

#5 a
1 - pnorm(600, 500, 150) #25 %

#5 b fica pra depois

#6 a

#7c
#media = mediana na distribuição normal
#distância interquartil é o 3 quartil - 1 quartil
qnorm(0.75, 1.8, 0.1) - qnorm(0.25, 1.8, 0.1)

#
1 - pnorm(325, 345, 12)
pnorm(325, 345, 12)

(500*0.05+1200*0.95) - 200


















