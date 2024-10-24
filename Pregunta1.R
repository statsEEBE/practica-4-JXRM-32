## Variable de Poisson
dpois(30,25) ## la funció per calcular probabilidad amb Pois a R
exp(-25)*(25^30)/factorial(30) ## Fent servir la eq de Pois
ppois(30,25) ## Amb aixó evaluem en F(X)
x <- (0:40)
plot(x,dpois(x,25),type="h", col="blue")
plot(x,ppois(x,25),type="s", col="blue") 
# 1 és 0, ja que la probabilitat en un punt es 0
# 2 com poison és per a discretes (ntrucades) però ens demanen hores, 
# passem a la varA continua exponencial, lamda seria 1/25, però R ho
# fa sol aleshores posem 25 igual. L'exponencial calcula la P
# d'esperar x temps fins rbre una trucada
t <- seq(0,2,0.01)
plot(dexp(t,25),type="l",col="blue")
plot(pexp(t,25),type="l",col="blue")
1-pexp(0.052,25) # P de que passin 0.052h entre dues trucades de
# de les 25 per hora
#3
mean(rexp(50000,25))
