summary(Fertilization_bsa)
summary(Fertilization_bsa)
boxplot(Fertilization_bsa$Values)

#ANOVA of Fertilization_bsa

a<-stack(Fertilization_bsa)
a
res<-aov(values~ind,data = a)
res
summary(res)
-----------
boxplot(Fertilization_bsa)

#ANOVA of Fertilization_tcm

a <- stack(Fertilization_tcm)
a
res <- aov(values ~ ind, data = a)
res
summary(res)



#ANOVA of Gonadotropin_Fertilization

a <- stack(Gonadotropin_Fertilization)
a
res <- aov(values ~ ind, data = a)
res
summary(res)
boxplot(Gonadotropin_Fertilization)


#ANOVA of With_CL_for_maturation

summary(With_CL_for_maturation)

a <- stack(With_CL_for_maturation)
a
res <- aov(values ~ ind, data = a)
res
summary(res)

#ANOVA of Without_CL_for_maturation


summary(Without_CL_for_maturation)
a <- stack(Without_CL_for_maturation)
a
res <- aov(values ~ ind, data = a)
res
summary(res)

#ANOVA from raw data

a1 <- c(10,35,27,54,27,45,34,39,48,57)
a2 <- c(90,88,89,76,94,85,99,78,67,69)
a3 <- c(40,53,46,62,54,66,44,39,49,56)

data <- data.frame(cbind(a1,a2,a3))
summary(data)
b <- stack(data)
b
res <- aov(values ~ ind, data = b)
res
summary(res)

install.packages("myawesomePackage")
hello()
library(myawesomePackage)
library(ggplot2)
model <- lm(a1 ~ a2 + a3, data = b)
summary(model)




#T Tes
summary(With_CL_for_maturation)
attach(With_CL_for_maturation)
t.test(Total_no_of_visible_follicle_1)


attach(Gonadotropin_Fertilization)
t.test(Gonadotropin_Fertilization)
summary(Gonadotropin_Fertilization)
b <- stack(Gonadotropin_Fertilization)
b
res <- aov(values ~ ind, data = b)
res
summary(res)


attach(fertilization_tcm)
t.test(fertilization_tcm$`2pn`)
summary(fertilization_tcm)
c <- stack(fertilization_tcm)
c
res <- aov(values ~ ind, data = c)
res
summary(res)


attach(fertilization_bsa)
d <- stack(fertilization_bsa)
d
res <- aov(values ~ ind, data = d)
res
summary(res)


t.test(Maturation_of_gonadotropin)

sd(Maturation_of_gonadotropin)/sqrt(176)
sd(`NO. of oocytes cultured`)/sqrt(104)
sd(`No. of culture matured`)/sqrt(72)

sd(maturation_of_10_BSA)
list(maturation_of_10_BSA)

summary(Gonadotropin_Fertilization)
sd(Gonadotropin_Fertilization$`no  pronuclei`)/sqrt(50)
sd(Gonadotropin_Fertilization$`>2pn`)/sqrt(7)

list(Gonadotropin_Fertilization)

sd(Gonadotropin_Fertilization$`1pn`, na.rm = TRUE)

sd(Gonadotropin_Fertilization$`1pn`, na.rm = TRUE)/sqrt(7)

mean(Gonadotropin_Fertilization$`1pn`, na.rm = TRUE)

sd(Gonadotropin_Fertilization$`2pn`, na.rm = TRUE)/sqrt(24)

mean(Gonadotropin_Fertilization$`2pn`, na.rm = TRUE)

mean(Gonadotropin_Fertilization$`>2pn`,na.rm = TRUE)

sd(Gonadotropin_Fertilization$`>2pn`, na.rm = TRUE)/sqrt(7)


sd(fertilization_bsa$`2pn`)

sd(maturation_of_10_BSA)

sd(maturation_of_10_BSA$`No of oocytes cultured`)/sqrt(231)
attach(maturation_of_10_BSA)

sd(maturation_of_10_BSA$`No of oocytes cultured`)/sqrt(123)
sd(maturation_of_10_BSA$`No. of oocytes matured`)/sqrt(90)


sd(Maturation_TCM199$`No. of oocytes cultured`)/sqrt(124)
sd(Maturation_TCM199$`No. of oocytes matured`)/sqrt(85)

list(Gonadotropin_Fertilization)
summary(Gonadotropin_Fertilization)

sd(Gonadotropin_Fertilization$`2pn`)/sqrt(24)

a<-stack(Gonadotropin_Fertilization)
a
res<-aov(values ~ ind, data = a)
res
summary(res)

sd(fertilization_bsa$`2pn`, na.rm = TRUE)/sqrt(30)

sd(fertilization_bsa$`1pn`, na.rm = TRUE)/sqrt(13)

sd(fertilization_bsa$`no pronuclei`, na.rm = TRUE)/sqrt(50)


sd(fertilization_tcm$`2pn`, na.rm = TRUE)/sqrt(40)

sd(fertilization_tcm$`1pn`, na.rm = TRUE)/sqrt(16)
sd(fertilization_tcm$`>2pn`, na.rm = TRUE)/sqrt(14)

sd(fertilization_tcm$`no nuclei`, na.rm = TRUE)/sqrt(48)

sd(fertilization_bsa$`>2pn`, na.rm = TRUE)/sqrt(22)

sd(fertilization_bsa$`no pronuclei`, na.rm = TRUE)/sqrt(50)

sd(Maturation_of_gonadotropin$`NO. of oocytes cultured`)
sd(Maturation_of_gonadotropin)
c <- stack(Maturation_of_gonadotropin)
c
sd(c$values)

d <- stack(Maturation_TCM199)
d
sd(d$values)

e <- stack(maturation_of_10_BSA)
e
sd(e$values)

t.test(maturation_of_10_BSA)

t.test(Maturation_TCM199)

t.test(Gonadotropin_Fertilization)

t.test(fertilization_tcm$`no nuclei`)
t.test(fertilization_tcm$`>2pn`)


t.test(fertilization_bsa$`>2pn`)

t.test (With_CL_for_maturation$Total_no_of_visible_follicle_1)

t.test(With_CL_for_maturation$No_of_follicle_aspirated_1)

t.test(With_CL_for_maturation$Normal_1)

t.test(With_CL_for_maturation$Abnormal_1)

t.test(With_CL_for_maturation$Total_1)

n <- stack(With_CL_for_maturation)
n
res <- aov(values ~ ind, data = n)
res
summary(res)

t.test (Without_CL_for_maturation$`Total no. visible follicle(2)`)
t.test(Without_CL_for_maturation$`Aspirated follicle (2)`)

t.test(Without_CL_for_maturation$`Total (2)`)

t.test(Without_CL_for_maturation$`Total (2)`)

b <- stack(Without_CL_for_maturation)
b
res <- aov(values ~ ind, data = b)
res
summary(res)

attach(fertilization_tcm)

b <- stack(fertilization_tcm)
b
res <- aov(values ~ ind, data = b)
res
summary(res)


t.test(Gonadotropin_Fertilization$`1pn`)
library(ggplot2)
boxplot(Gonadotropin_Fertilization)

boxplot(Gonadotropin_Fertilization$`1pn`)
#one sided
t.test(Gonadotropin_Fertilization$`1pn`, mu=0.29, alternative="less", conf.level=0.95)
#or
t.test(Gonadotropin_Fertilization$`1pn`, mu=0.29, alt="less", conf=0.95)

#Two Sided t test

t.test(Gonadotropin_Fertilization$`1pn`, mu=0.29, alt="two.sided", conf=0.95)
#or
t.test(Gonadotropin_Fertilization$`1pn`, mu=0.29, conf=0.95)

t.test(Gonadotropin_Fertilization$`1pn`)
help("t.test")
attach(Gonadotropin_Fertilization)
# Welch Two Sample t-test
t.test(Gonadotropin_Fertilization$`2pn` ~ Gonadotropin_Fertilization$`1pn`, data = Gonadotropin_Fertilization, var.equal = TRUE, paired = FALSE)

install.packages("tidyverse")
library(tidyverse)
rename(`no_pronuclei`=`n_pronuclei`)

sum(Gonadotropin_Fertilization)
var(Gonadotropin_Fertilization$`2pn`)

sd(Gonadotropin_FertilizationL$`2pn`, na.rm = TRUE)/sqrt(14)
sd(fertilization_bsaL$`2pn`, na.rm = TRUE)/sqrt(21)
mean(fertilization_bsaL$`2pn`)
sd(fertilization_bsaL$`2pn`, na.rm = TRUE)/sqrt(30)
sd(Gonadotropin_FertilizationL$npn, na.rm = TRUE)/sqrt(42)

sd(Maturation_of_gonadotropinL$`NO. of oocytes cultured`, na.rm = TRUE)/sqrt(166)
sd(maturation_of_10_BSAL$`No. of oocytes matured`, na.rm = TRUE)/sqrt(151)

str(fertilization_bsaL)
summary(fertilization_bsaL)




#replace NA values with 0
fertilization_bsaL$`2pn`[is.na(fertilization_bsaL$`2pn`)] = 0

fertilization_bsaL$`1pn`[is.na(fertilization_bsaL$`1pn`)] = 0
fertilization_bsaL$`l2pn`[is.na(fertilization_bsaL$`l2pn`)] = 0
fertilization_bsaL$`npn`[is.na(fertilization_bsaL$`npn`)] = 0

fbsl <- c(rep('2pn', 49), rep('1pn', 49), rep('l2pn', 49), rep('npn', 49))
weight <- c(fertilization_bsaL$`2pn`, fertilization_bsaL$`1pn`, fertilization_bsaL$l2pn,
            fertilization_bsaL$npn)
fbsl
weight

df <- data.frame(fbsl, weight)
fertilization_bsaL.aov <- aov(weight ~ fbsl, data = df)
summary(fertilization_bsaL.aov)
install.packages("ggplot2")
library(ggplot2)
plot(weight ~ fbsl, data = df)

fertilization_bsaL$`2pn`[is.na(fertilization_bsaL$`2pn`)] = ""

fertilization_bsaL$`1pn`[is.na(fertilization_bsaL$`1pn`)] = ""
fertilization_bsaL$`l2pn`[is.na(fertilization_bsaL$`l2pn`)] = ""
fertilization_bsaL$`npn`[is.na(fertilization_bsaL$`npn`)] = ""

fbsl <- c(rep('2pn', 30), rep('1pn', 21), rep('l2pn', 32), rep('npn', 49))
fbsl
weight <- c(fertilization_bsaL$`2pn`, fertilization_bsaL$`1pn`, fertilization_bsaL$l2pn,
            fertilization_bsaL$npn)
weight
# df <- data.frame(fbsl, weight)
  ##fertilization_bsaL.aov <- aov(weight ~ fbsl, data = df)

