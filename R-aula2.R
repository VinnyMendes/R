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
class(vetor[1])

teste <- as.numeric(vetor[1])
teste

numerico <- as.numeric(vetor)
numerico


e <- matrix(ncol=2, nrow=2, data= 1:4)

e[2,1]             #2a linha 1 coluna

e[2, ]             #2a linha completa

e[,2]              #2a coluna

e[,1:2]            #1 e 2 coluna

e[1:2, 1]          #1 e 2 linha, 1a coluna

as.data.frame(e)   #converte uma matriz para um dataframe

i <- list(2,3,"c","d", FALSE,2+3i, 4+2i)

class(i)

i[1]
class(i[1])

library(dslabs)
data(murders)
sort(murders$total)

x <- c(31,4,15,92,65)
x
sort(x)
index <- order(x)    #mostra a sequencia de indexes em ordem crescente
index

x[index]             #mesma coisa que o sort

murders$state[1:10]
murders$abb[1:10]

index <- order(murders$total)
murders$state[index]

max(murders$total)
i_max <- which.max(murders$total)   #atribui o indice do elemento com o maior total a variável i_max
i_max
murders$state[i_max]

i_min <- which.min(murders$total)   #atribui o indice do elemento com o maior total a variável i_min
murders$state[i_min]
murders


i_max <- which.max(murders$total/murders$population)
murders$state[i_max]

x <- c(31,4,15,92,65)
x
rank(x)


#original  sort  order  rank
#  31       04    02    03
#  04       15    03    01 
#  15       31    01    02
#  92       65    05    05
#  65       92    04    04


#order > index levando em consideração o sort / no vetor original, qual a posição do 1o elemento após a ordenação(sort)
#rank  > index levando em consideração a sequencia original / nao muda a ordem só diz a classificação. / mostra a posição dos elementos
#do vetor orignal / ex: o 31 é o 3o menor


pop <- murders$population
pop
pop <- sort(pop)
pop[1]















