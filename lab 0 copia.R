#lab 0 MCIB
x <-runif(10,6,9)
x
2*x
log(x)
y <- log(x)
x+y
x*y
z<-x*y
z

x<-runif(100,6,9)
 hist(x)
x<-(1000,6,9)
hist(x)
hist(x,breaks=7)

lb<-qnorm(0.14,0,2)
ub<-qnorm(0.86,0,2) 
lb
ub

pnorm(-9,3,2)+(1-pnorm(15,3,2))
x<-runif(100,-2,2) 
y<-dnorm(sort(x)) 
plot(y)

x<-runif(100,0,1)
boxplot(x) 
summary(x) 
mean(x) 
var(x) 
sqrt(var(x)) 
sd(x)
median (x) 
quantile(x,0.25)
quantile (x,0.75) 
cvx<-sd(x)/mean(x)
cvx 
y<-(x-mean(x))/sd(x)
mean(y) 
sd(y)

help(rnorm)
x<-rnorm(1000,0,1) 
y<-rnorm(1000,0,10) 
z<-rnorm(1000,100,1)
par(mfrow=c(1,3)) #esto para que coño sirve ??
hist(x)
hist(y)
hist(z)

x<-rexp(1000,3)
mean(x) 
sd(x) 
mean(x)/sd(x)
boxplot(x)
boxplot(log(x))

# Algo de análisis exploratorio bivariante con una referencia al modelo lineal. Más cosas más tarde
x<-runif(50,4,12)
y<-3*x+5+rnorm(50,0,3)
plot(x,y)
cor(x,y)
cov(x,y)
help(lm) 
modelo<-lm(y ~ x) 
summary(modelo)
plot(modelo)


#Un poco sobre detección de outliers
x<-rnorm(50,3,1)
x[51]<-100 
x
hist(x) 
boxplot(x)

#lo siguiente que trata es como descargar paquetes 
# y sobre la carga de ficheros






