install.packages("lattice")
install.packages("abind")
install.packages("car")
install.packages("fdth")
library (car)
library (lattice)
library (fdth)


load("C:/Users/drulla/Desktop/Estatistica_ex1/imoveiscwbav.RData")
head(imoveiscwbav)
summary(imoveiscwbav)
View(imoveiscwbav)

#Histograma

hist(imoveiscwbav$price)
hist(imoveiscwbav$parea)

#boxplot

View (imoveiscwbav)
names (imoveiscwbav)
Boxplot( ~ price, data=imoveiscwbav, id=list(method="y"))
Boxplot( ~ parea, data=imoveiscwbav, id=list(method="y"))

#scaterplot

xyplot(price ~ parea, type="p", pch=16, auto.key=list(border=TRUE), 
       par.settings=simpleTheme(pch=16), scales=list(x=list(relation='same'), 
       y=list(relation='same')), data=imoveiscwbav)
       
#2)
#Distribuicao de frequencia

table <- fdt(imoveiscwbav$price)

print (table)

#3)
#media
mean(imoveiscwbav$price)

#mediana
median (imoveiscwbav$price)

#moda
v <- imoveiscwbav$price
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
result <- getmode(v)
print(result)