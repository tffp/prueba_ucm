x <- rbeta(500,10,4) # asi creo que simplemente genera las observaciones aleatorias

# quiero calcular su media
mean <- sum(x) / 500

# calcular su mediana
y <- sort(x) 
median <-y[c(250)]

#para poder observar la moda
hist(x)

# estimación por intervalos, con este comando obtenemos el intervalo de confianza para 0.9

q1 <- qbeta(0.95,10,4)
q2<- qbeta(0.05,10,4)

q3 <- qbeta(0.5,10,4) # la mediana

# contraste de hipótesis

pbeta(0.5,10,4) # da la probabilidad de ≤ 0.5 (a la izquierda de 0.5)

# En este caso queremos su complementario, y que estamos contrastando H0: theta ≥ 0.5
1-pbeta(0.5,10,4)

# con simulación
n =  10000;
t <- rbeta(n,10,4); # podria mirar cuantos valores son ≥0.5, no se como la verda
v<-sort(t);

cuenta <- 0;
for (i in 1:n) {
  if (x[c(i)] >= 0.5 ){
    cuenta <- cuenta + 1 
  } 
}
cuenta/10000

# me da error el bucle if y no se porque, 
#Error in if (x[c(i)] >= 0.5) { : 
  #valor ausente donde TRUE/FALSE es necesario
# y creo que me da el valor complementario al que quiero pero igual es por el ERROR




