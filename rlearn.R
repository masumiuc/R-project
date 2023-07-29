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

library(dplyr)
install.packages("palmerpenguins")
library(palmerpenguins)
str(penguins)
skim_without_charts(penguins)
library(tidyr)
library(tidyverse)

head(penguins)
library(skimr)
skim_without_charts(penguins) # this function needs skimr package installed

#Arithmetic operator
x <- 2
y <- 7
 
x+y
x-y 
x*y
x/y
y/x
y%%x
y%/%x
y^x
x^y

# Relational operator

x<y
x>y
x<=2

# Equal to 

x==2
y==7
x==y

# Not equal to

x!=y
x!=2

# Logical operator
# Element-wise logical AND
x > 1 & x < 5
x > 2 & x < 1
# Element-wise logical OR
# The main difference is that just one of the values of the OR operation needs to be TRUE for the entire OR operation to evaluate to TRUE.
x > 1 | x < 2

# Logical AND (&&)  and OR (||). The main difference between element-wise logical operators (&, |) and logical operators (&&, ||) is the way they apply to operations with vectors. The operations with double signs, AND (&&) and logical OR (||), only examine the first element of each vector. The operations with single signs, AND (&) and OR (|), examine all the elements of each vector. 

x <- c(3, 5, 7)
y <- c(2, 4, 6)

x < 5 & y < 5
# When you compare each element of the two vectors, the output is TRUE, FALSE, FALSE. The first element of both x (3) and y (2) is less than 5, so this is TRUE. The second element of x is not less than 5 (it’s equal to 5) but the second element of y is less than 5, so this is FALSE (because you used AND). The third element of both x and y is not less than 5, so this is also FALSE.

# with double ampersand (&&)

# x < 5 && y < 5 . Though the Google course instructor instructed to run this code in R, it does not run.

# Organize your data by arrange(), group_by(), filter() function

install.packages("palmerpenguins")
library(palmerpenguins)
View(penguins)

str(penguins)

install.packages("skimr")
library(skimr)
skim_without_charts(penguins)
tibble(penguins)
library(tidyr)
tibble(penguins)
head(penguins)

install.packages("janitor")
library(janitor)

clean_names(penguins)

# We can use the arrange function to choose which variable we want to sort by, first wen need to install tidyverse package
install.packages("tidyverse")
library(tidyverse)

install.packages("palmerpenguins")
library(palmerpenguins)
data("penguins")
# We can use the arrange function to choose which variable we want to sort by, first wen need to install tidyverse package
penguins %>% arrange(bill_length_mm)

# For descending order 

penguins %>%  arrange(-bill_length_mm)

# if we want to save this version of data 

penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)

skim_without_charts(penguins2)
head(penguins2)

# If want to know islands and the mean bill length of the penguins living there.

penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>% summarise(max_b = max(bill_length_mm))

penguins %>% group_by(island, species) %>% drop_na() %>% summarise(max_b = max(bill_length_mm, mean_b = mean(bill_length_mm)))

penguins %>% filter(species == "Adelie")
install.packages("readr")
library(readr)

#new data set imported "hotel_bookings"

View(hotel_bookings)

str(hotel_bookings)
head(hotel_bookings)

library(skimr)
skim_without_charts(hotel_bookings)

# To count how many adult were visited in two different hotels

hotel_bookings %>% group_by(hotel) %>% drop_na() %>% summarise(sum_adult = sum(adults))


library(janitor)
clean_names(hotel_bookings)

sum(hotel_bookings$adults)
colnames(hotel_bookings)

any(is.na(hotel_bookings$hotel))

sum(hotel_bookings$children)

hotel_bookings %>% group_by(hotel) %>% summarise(sum_babies = sum(babies))

hotel_bookings %>% group_by(hotel) %>% summarise(sum_children = sum(children))

sum(hotel_bookings$children)
library(janitor)
glimpse(hotel_bookings)

hotel_bookings %>% group_by(hotel) %>% drop_na() %>% summarise(sum_children = sum(children))
hotel_bookings %>% drop_na() %>% summarise(sum(children))

hotel_bookings %>% group_by(hotel, arrival_date_year) %>% drop_na() %>% 
  summarise(total_adult = sum(adults), total_babies = sum(babies), total_children = sum(children), total_guests = sum(adults+children+babies))

x <- sum(hotel_bookings$adults, na.rm = TRUE)
y <- sum(hotel_bookings$children, na.rm = TRUE)
z <- sum(hotel_bookings$babies, na.rm = TRUE)

sum(x+y+z)

summary(hotel_bookings$adults)
summary(hotel_bookings$hotel)

trimmed_df <- hotel_bookings %>% 
  select(hotel, is_canceled, lead_time)
print(trimmed_df)

trimmed_df %>% select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type= hotel)

# to unite two column

example_df <- hotel_bookings %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " " )
print(example_df)


# Let's say you wanted to create a new column that summed up all the adults, children, and babies on a reservation for the total number of people

example_mdf <- hotel_bookings %>% drop_na() %>% 
  mutate(guests = adults, babies, children)

head(example_mdf)

# Calculate the total number of canceled bookings
# Calculate the average lead time for booking
# Make a column called 'number_canceled' to represent the total number of canceled bookings
# make a column called 'average_lead_time' to represent the average lead time.

example_summarise <- hotel_bookings %>% 
  summarise(number_canceled = sum(is_canceled), avearge_lead_time = mean(lead_time))


head(example_summarise)
id <- c(1:10)


name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")


job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


employee <- data.frame(id, name, job_title)

head(employee)

# Manual Data Frame creation

employee_id <- c(00100:00105)
employee_name <- c("Junaid Khondokar", "Mohammed Alal", "Mohammed Jakir", "Mohammed Ahsan", "Sah Jalal", "Joynal Uddin")
address <- c("Khulna", "Jessor", "Lakshmipur", "Cox's Bazar", "Chattogram", "Dhaka")

office_staff <- data.frame(employee_id, employee_name, address)
head(office_staff)

# Use of separate() function 

library(tidyr)

office_staff_sep <- separate(office_staff, employee_name, into = c("first_name", "last_name"), sep = " ")

head(office_staff_sep)

unite(office_staff_sep, 'name', first_name, last_name, sep = " ")

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)

print(employee)

unite(employee, 'name', first_name, last_name, sep = " ")

View(penguins)

library(janitor)

penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000) %>% drop_na()

new_hotelbookings <- hotel_bookings %>% 
  select(-is_canceled, -arrival_date_month) %>% drop_na()

head(new_hotelbookings)


View(hotel_bookings)
head(hotel_bookings)

# to remove data frame from R global environment

rm(new_hotelbookings)


install.packages("Tmisc")
library(Tmisc)
data(quartet)
View(quartet)

quartet %>% 
  group_by(set) %>% 
  summarise(mean(x), sd(x), mean(y), sd(y), cor(x,y))

ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method = lm,se=FALSE) + facet_wrap(~set)

install.packages('datasauRus')
library(datasauRus)
View(datasaurus_dozen)

glimpse(datasaurus_dozen)
skim_without_charts(datasaurus_dozen)

ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset))+geom_point()+
  theme_void()+theme(legend.position = "none")+facet_wrap(~dataset, ncol = 3)
# To check the bias of data
install.packages("SimDesign")
library(SimDesign)
actual_temp <- c(68.3, 70, 72.4, 71,67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)

bias(actual_temp, predicted_temp)


data.frame(ToothGrowth)
ToothGrowthna <- ToothGrowth %>% drop_na()
diff <- ToothGrowthna$len - ToothGrowthna$dose
print(diff)
bias(diff)

library(SimDesign)
mat <- cbind(m1 = rnorm(100, 110, sd = 0.4), m2 = rnorm(100, 101, sd = 1.1))
print(mat)
bias(mat, parameter = 3)
bias(mat, parameter = 2, type = 'relative')
bias(mat, parameter = 2, type = 'standardized')

mean(hotel_bookings$lead_time)

rename_with(hotel_bookings, toupper)

hotel_bookings %>% arrange(lead_time)

penguins %>% drop_na() %>% group_by(species) %>% summarise(mean(body_mass_g))

# Data visualization with R
install.packages("palmerpenguins")
library(palmerpenguins)
data.frame(penguins)
library(ggplot2)
library(tidyverse)
penguin_nna <- penguins %>% drop_na()
ggplot(data=penguin_nna)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color = species))

ggplot(data = penguin_nna, mapping = aes(x=flipper_length_mm,y=body_mass_g, color = species))+geom_point()
library(ggplot2)
library(tidyverse)
ggplot(data = penguin_nna)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color = species))

# Try with another variable bill_length_mm and bill_depth_mm

ggplot(data = penguin_nna)+
  geom_point(mapping = aes(x=bill_length_mm, y=bill_depth_mm, color = species))

# To see how many rows contain NA value.

apply(is.na(penguins), 2, sum)


df <- data.frame(A = c(1, 2, NA),
                 B = c(NA, NA, 5),
                 C = c(7, NA, 9))
glimpse(df)
apply(is.na(df), 2, sum)

df %>% drop_na()

ggplot(data = penguin_nna)+
  geom_point(mapping = aes(x=flipper_length_mm, 
                           y=body_mass_g, color = species, shape = species, size =species))


ggplot(data = penguin_nna)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, alpha = species))


ggplot(data = penguin_nna)+geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g), color = "purple")

ggplot(data = penguin_nna)+geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g))+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))


ggplot(data = penguin_nna)+geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g, linetype = species))

ggplot(data = penguin_nna)+geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g))


ggplot(data = diamonds)+geom_bar(mapping = aes(x=cut))


ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, fill = cut))


ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, color = cut))

ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, fill = clarity))

install.packages("ggplot2")

install.packages("palmerpenguins")

# The code can also be written 

ggplot(data = penguin_nna, aes(x=flipper_length_mm, y=body_mass_g))+geom_point()+geom_smooth(method = "loess")

# There are two types of smoothing loess and gam (gam is useful for smoothing plots with a large number of points.

ggplot(data = penguin_nna, aes(x=flipper_length_mm, y=body_mass_g))+geom_point()+geom_smooth(method = "loess")

ggplot(data = penguin_nna, aes(x=flipper_length_mm, y=body_mass_g))+geom_point()+
  geom_smooth(method = "gam", formula = y ~s(x))

# Use of facets

ggplot(penguin_nna, aes(x=flipper_length_mm, y=body_mass_g, color = species))+
  geom_point()+
  geom_smooth()+
  facet_wrap(~species)

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=color, fill = cut))+
  facet_wrap(~cut)

# two variables in facets

ggplot(penguin_nna, aes(x=flipper_length_mm, y=body_mass_g, color = species))+
  geom_point()+
  facet_grid(sex~species)

exa_data <- data.frame(x = 1:12,
                       y = 1:12,
                       g1 = rep(LETTERS[1:4], each = 3),
                       g2 = letters [1:4])
print(exa_data)

ggplot(data = exa_data)+geom_point(mapping = aes(x,y))


