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



# apara 10% dos menores e 10% dos maiores
mean(x, trim=0.1)




# ************************************ QUESTÃO 1 ************************************

area <- c(397,300,264,300,300,309,301,250,325,330,311,200)
valor <- c(4987.41,5933.33,7765.15,5966.67,5933.33,5987.06,6611.30,8760.00,7169.23,5606.06, 8697.75,12900.00)

imoveldata <- data.frame(area, valor)
imoveldata

#A
mediaValor <- mean(imoveldata$valor)
mediaValor

#B
medianaValor <- median(imoveldata$valor)
medianaValor

#C
mediaAparada <- mean(imoveldata$valor, trim=0.1)
mediaAparada

#D
# Pode se dizer que há uma grande diferença entre a média, média aparada e mediana.
# Comparando média e média aparada é normal o valor ser distindo, haja vista que a média
# aparda exclui os valores mais altos e mais baixos. A diferença de valor entre a média
# e a mediana se da pelo fato da média ser calculada com a soma de todos os valores divido
# pela quantidade de valores e a mediana pega o valor do meio (ou caso seja um número par
# de elementos, é a média dos 2 elementos centrais).

# ************************************ QUESTÃO 2 ************************************

ano <- c(seq(2000, 2021))

precipitacao <- c(656, 1083, 1304, 991 ,1246.8 ,1637.8 ,1580.2 ,1099.6 ,1574.8 ,1688 ,
1312.4 ,1457 ,1307.4 ,1595.4 ,1474.8 ,1087.6 ,1140.8 ,1292 ,1702 ,1369.4 ,1576.6 ,2023.2)

chuvaData <- data.frame(ano, precipitacao)

#a
mediaPrecipitacao <- mean(chuvaData$precipitacao)
mediaPrecipitacao
desvioPadrao <- sd(chuvaData$precipitacao)
desvioPadrao

#b 0.076 -> 7,6% de chance
probabilidadeChuva <- (1-pnorm(1800, mediaPrecipitacao, desvioPadrao))
probabilidadeChuva

#c
probabilidadeMenor10 <- qnorm(0.1, mediaPrecipitacao, desvioPadrao)
probabilidadeMenor10

hist(chuvaData$precipitacao)

# ************************************ QUESTÃO 3 ************************************

aluno <- c(seq(1,100))

notaFinal <- c(17.00, 22.34, 37.01, 22.00, 22.34, 16.00, 27.34, 24.34, 17.00, 28.34,23.00, 18.00, 42.01, 29.67, 17.67, 19.34, 29.67, 32.67, 28.67, 43.67, 38.67, 19.34, 27.34, 33.34, 19.00, 15.34, 15.34, 19.00, 17.67, 32.34, 26.67, 19.00, 29.34, 23.67, 34.67, 48.67, 31.34, 45.01, 21.34, 26.67, 34.34, 25.00, 33.34, 30.00, 19.00, 27.34, 24.34, 35.67, 13.00, 39.34, 20.34, 27.67, 24.67, 25.34, 20.67, 17.34, 19.00, 30.00, 28.00, 26.00, 37.34, 27.34, 21.67, 30.67, 35.34, 43.01, 25.34, 21.34, 37.34, 42.34, 22.67, 15.00, 26.00, 22.00, 17.00, 19.00, 20.67, 20.00, 20.34, 14.00, 29.00, 35.34, 28.67, 25.34, 18.00, 17.34, 38.34, 22.00, 22.00, 25.34, 28.00, 25.34, 30.67, 24.34, 44.01, 18.67, 23.34, 14.67, 28.67, 30.00)

dataAluno <- data.frame(aluno, notaFinal)
dataAluno

#a
mediaNota <- mean(dataAluno$notaFinal)
desvioNota <- sd(dataAluno$notaFinal)

#b está acima do 3º quartil
quartis <- quantile(dataAluno$notaFinal, prob=c(.25,.5,.75))
quartis

#c sim ele está
quartil90melhor <- quantile(dataAluno$notaFinal, prob=.9)
quartil90melhor

# ************************************ QUESTÃO 6 ************************************

regressaoLinear <- lm(valor~area, data = imoveldata)
regressaoLinear
summary(regressaoLinear)

#a -> y = 18309,09 - 37,19 * x

#b
cov(valor, area)

#c quanto mais próximo de -1 ou de 1 o valor da correlação, mais forte é a relação entre as variáveis
cor(valor, area)

#d explica o quão bem o seu modelo funciona. R => 0.6365














