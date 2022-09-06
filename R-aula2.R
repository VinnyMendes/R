#Vinicius Mendes da Silva : https://www.linkedin.com/in/viniciusmendesdasilva/
#Ciência de Dados - CEUB
#Atividade sugerida pelo professor Wandre: https://www.linkedin.com/in/wandreveloso/

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

data(movielens)                         #carregar data frame
nrow(movielens)                         #numero de linhas
length(movielens)                       #numero de colunas
class(movielens$title)                  #tipo da variavel title
class(movielens$genres)                 #tipo da variavel genres
length(levels(movielens$genres))        #quantidade de generos


head(movielens)
str(movielens)



codes <- c(380,124,818)
country <- c("Italy", "Canada", "Egypt")
class(codes)
class(country)

names(codes) <- country    #atribui a codes os nomes de country
codes


codes <- c(italy=380,canada=124,egypt=818)
class(codes)
codes <- c("italy"=380,"canada"=124,"egypt"=818)
class(codes)

seq(1,10)
seq(10, 1, -0.1)  #sequencia de 1 a 10 andando 0.1 por vez
1:10

codes[2]            #segundo elemento
codes[c(1,3)]       #primeiro e terceiro elemento
codes[c(3,2,1)]
codes[c(seq(1,3,2))]
codes[1:2]
codes["Canada"]
codes[c("Egypt", "Italy")]

c(1,2,3,4) == c(seq(1,4))

x <- c(1,"Canada",3)
class(x)


x <- 1:5
y <- as.character(x)
y
y <- as.numeric(y)
y

temp <- c(50,75,90,100,150)

city <- c("Brasilia", "Paris", "Japonvar", "Itu", "Roma")

names(temp) <- city
temp

city <- c("Brasilia", "Paris", "Japonvar", "Itu")

names(temp) <- city
temp

temp[1:3]
temp[c("Paris", "Itu")]

x <- seq(13,71)
x
length(x)
sum(x[1:3])

sum(x[seq(1,71,2)])

x <- seq(13,71,2)
x
sum(x)


z <- seq(0,300, 7)  #Multiplos de 7 que são menores ou iguais a 300
z

impares <- seq(1,100,2)
impares

length(seq(6,55,4/7))

v <- seq(0,7, length.out = 5)
v

j <- seq(1,10, length.out = 100)
j


h<- vector("logical", length = 15)
h

class(3)
class(3L)

vetor <- c(1,3,5,"a")
class(vetor)                #COERSAO

numerico <- as.numeric(vetor)
numerico






