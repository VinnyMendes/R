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
