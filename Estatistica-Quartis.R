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










