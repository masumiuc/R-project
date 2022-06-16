summary(Abnormal_sperm)
x <- mean(Abnormal_sperm$FrozenSemenPrcnt)
x
z <- mean(Abnormal_sperm$FreshSemenPrcnt)
z
attach(Abnormal_sperm)
median(FrozenSemenPrcnt)
hist(FrozenSemenPrcnt)
hist(log(FreshSemenPrcnt))
boxplot(FrozenSemenPrcnt ~ FreshSemenPrcnt)
median(FreshSemenPrcnt)             
install.packages("dplyr")        
install.packages("ggpubr")

summary(Abnormal_sperm)
var(Abnormal_sperm$FreshSemenPrcnt)
var(Abnormal_sperm$FrozenSemenPrcnt)
sd(Abnormal_sperm$FrozenSemenPrcnt)
sd(Abnormal_sperm$FreshSemenPrcnt)

x
z
attach(Abnormal_sperm)
t.test(data = FreshSemenPrcnt, FrozenSemenPrcnt)
t.test(data = FrozenSemenPrcnt, FreshSemenPrcnt)

t.test(FrozenSemenPrcnt ~ FreshSemenPrcnt, data = Abnormal_sperm, 
       var.equal = TRUE, paired = FALSE)

t.test(FrozenSemenPrcnt,mu = 18.2)
t.test(FreshSemenPrcnt,mu = 10)


boxplot(FrozenSemenPrcnt)
qqnorm(FrozenSemenPrcnt)
qqline(FrozenSemenPrcnt)
