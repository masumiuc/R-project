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
file.create ("newfile.txt")
file.copy("newfile.txt", "google")
unlink("newfile.txt")
# To check installed packages i the system
installed.packages()
#To load class and other uninstalled packages
library(class)
update.packages()

#A pipe is a tool in R that helps make your code more efficient and easier to read and understand.

# A pipe is a tool in R for expressing a sequence of multiple operations, represented with "%>%"

#In other words, it takes the output of one statement and makes it the input of the next statement.

# ToothGrowth is data set already installed in R to show the use of pipe

data("ToothGrowth")
View(ToothGrowth)
library(dplyr)
install.packages("dplyr")
library(dplyr)
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)
arrange(filtered_tg,len)
#same thing we will do by nested function # In programming NESTED describes code that performs a particular function and is contained within code that performs a broader function.
arrange(filter(ToothGrowth, dose==0.5),len)
# we can use pipe to show the same result 
# A pipe is a tool in R for expressing a sequence of multiple operations, represented with "%>%"

#In other words, it takes the output of one statement and makes it the input of the next statement. ctrl+shift+m for shortcuts

filtered_toothgrowth1 <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

View(filtered_toothgrowth1)

#Finding average length of teeth by supplementary applying more complex pipe

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>%
  group_by(supp) %>% 
  summarise(mean_len=mean(len,na.rm = T),.groups = "drop")

filtered_toothgrowth

View(filtered_toothgrowth)

#Code from ChatGPT I asked (if I exclude the line (,.groups = "drop") from my command it results same with or without this line)

result <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarise(mean_len = mean(len, na.rm = T)) %>%
  arrange(supp)

View(result)

install.packages("tidyverse")
library(tidyverse)
data("diamonds")
View(diamonds)
#since we are not using all the observations we just pull first 6 rows by head()

head(diamonds)

# we could use the structure function str() to highlight the structure of this data frame.
str(diamonds)

# If we need to know only column names we could use colnames() function.

colnames(diamonds)

#We can also use the mutate function to make changes to our data frame. 

mutate(diamonds, carat_2= carat*100)

as_tibble(dimonds)
library(tidyverse)
data("diamonds")
as_tibble(diamonds)

data()

data("mtcars")
mtcars
View(mtcars)

readr_example()

readr_example("mtcars.csv")
read.csv(readr_example("mtcars.csv"))
summary(mtcars)

glimpse(mtcars)

library(readxl)
readxl_example()

read_excel(readxl_example("type-me.xlsx"))
excel_sheets(readxl_example("type-me.xlsx"))
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")

str(mtcars)
library(tidyverse)
#Cleaning up with the basics

install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)

install.packages("tidyr")
library(tidyr)
install.packages("palmerpenguins")
library("palmerpenguins")

# try with some clean function skim_without_chart(), glimpse(, head(), select()

skim_without_charts(penguins)
head(penguins)

# select() function need dplyr package installed

install.packages("dplyr")

library(dplyr)

penguins %>% 
  select(species)

#if we need every column except species

penguins %>% 
  select(-species)

#to rename column in data frame

penguins %>% 
  rename(island_new = island)

# Similar to the rename function, the rename_with() function can change column names to be more consistent. For example, maybe we want all of our column names to be in uppercase. We can use the rename_with() function to do that. This will automatically make our column names uppercase. But since variable names are usually lowercase, we'll use the "To lower" option to change it

penguins %>% 
  rename_with(toupper)

#we can write another way

rename_with(penguins, tolower)

# clean_names() function  in janitor package

clean_names(penguins)

#When you import data from various sources or merge multiple data sets, column names can sometimes be inconsistent, containing spaces, special characters, capital letters, or other non-standard elements. Such messy column names can be challenging to work with and may lead to errors in your analysis. The clean_names() function helps address these issues by performing the following transformations on column names

ok