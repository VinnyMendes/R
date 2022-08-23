#Vinicius Mendes da Silva
#Ciência de Dados - CEUB

library(dslabs)

data(murders)
class(murders)
str(murders)
head(murders)
murders$population #accessor $
names(murders)

pop <- murders$population
length(pop)
class(pop)
class(murders$state)

z <- 3 == 2
class(z)

class(murders$region)
murders$region
length(murders$region)
levels(murders$region)
length(levels(murders$region))

murders$region == murders[["region"]]
murders[["region"]]
murders$region #O mais recomendado

class(murders[["region"]]) #factor
class(murders["region"])   #data.frame

x <- c("a","a","b","b","b","c")
class(x)
x
length(x)
levels(x)

table(x) #faz um quadro contando as repetições

a<-2
b<- -1
c<- -4

raiz1 <- (-b + sqrt(b^2-4*a*c))/(2*a)
raiz2 <- (-b - sqrt(b^2-4*a*c))/(2*a)

log(1024,4)

data(movielens) #carregar data fram
nrow(movielens) #numero de linhas
length(movielens) #numero de colunas
class(movielens$title) #tipo da variavel title
class(movielens$genres) #tipo da variavel genres
length(levels(movielens$genres)) #quantidade de generos












