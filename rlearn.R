print("hello world")
#Here is an example of a variable
first_veriable <-"This is my variable"
second_variable <- 12.5
#Example of Vector: a vector is a group of data elements of the same type stored in a sequence in R.
vec_1 <- c(13, 48.5, 71, 101.5, 2)
vec_1

# Type of Vector
typeof(c(5L, 6L))
typeof(c(5, 6, 5.7, 6.4))
typeof(c("Masum", "Sawda", "Salma"))
typeof(c(4,5,7,5,4))
v1 <- c(5L, 6L)
v1
length(v1)
is.integer(v1)
is.character(v1)

lis1 <- (list(1,3,4,"Masum", TRUE))
list(lis1)
names(lis1) <- list(1,3,4,"Masum", TRUE)
lis1
class(lis1)
is.list(lis1)
lis1[[3]]
lis1[1:3]
str(lis1)
num <- 1:7
num
product <- c("Laptop", "Mobile", "WebCam")
l1 <- list(num,product)
l1
l1[1]
l1[[1]]
install.packages("tidyverse")
library(tidyverse)
library(lubridate)
today()
now()
ymd("2022-07-22")
mdy("January-03-22")
dmy(030320)
