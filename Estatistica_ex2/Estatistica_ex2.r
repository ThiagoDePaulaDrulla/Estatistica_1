#install.packages("stats")
#install.packages("carData")
#install.packages("datasets")
#install.packages("BSDA")

library(carData)
library(datasets)
library(BSDA)
library(stats)

load("C:/Users/drulla/Desktop/Estatistica_ex1/imoveiscwbav.RData")
head(imoveiscwbav)
summary(imoveiscwbav)
View(imoveiscwbav)

#Intervalo de confiança

x <- imoveiscwbav$price

t.test(x, y = NULL,
       alternative = c("two.sided"),
       mu = 0, paired = FALSE, var.equal = FALSE,
       conf.level = 0.95, data=imoveiscwbav)

#Teste para a diferenca entre duas medias (z)

sp <- sd(imoveiscwbav$parea)

st <- sd(imoveiscwbav$tarea)

p <- imoveiscwbav$parea

t <- imoveiscwbav$tarea

z.test(p, t, alternative = "two.sided", mu = 0, sigma.p = sp,
       sigma.t = st, conf.level = 0.95)
