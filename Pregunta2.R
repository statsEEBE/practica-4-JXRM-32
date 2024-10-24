# Ens diuen que el valor de temps (T) esperat és 10000
#1
E_T <- 10000 # = 1/lam
lam <- 1/E_T
1-pexp(13000,lam) # P de que tardi 1300h o més 
#2 si volem que les componentstene p>0.2 estem en el quantile 0.8
qexp(0.8,lam)
# Fem 100 simulacions de la variable T
set.seed(0.85)
sim <- rexp(100,lam)
#1 
mean(sim)
#2
median(sim)
#3
var(rexp)
