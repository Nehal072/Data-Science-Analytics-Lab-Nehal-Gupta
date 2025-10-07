#Q.1Variables & Data Types 

#Q.1.1. Create variables to store:
#- Your name (character)
a<-"Siddhi"
print(a)
#- Your age (numeric)
b<-19
print(b)
#- Whether you are a student (logical)
student<- TRUE
print(student)
#Q.1.2. Create a vector containing the numbers 1 to 10.
vec<-c(1,2,3,4,5,6,7,8,9,10)
print(vec)
#Q.1.3. Create a sequence from 5 to 50 with a step size of 5.
vec50<-seq(5,50,by=5)  #here instead of using c we have to us eseq as we are printing sequence by 5
print(vec50)
#Q.1.4. Store the names of 5 fruits in a character vector and display the second and fourth fruit.
fruits<-c("Apple","Banana","Chickoo","Cherry","Orange")
print(fruits[c(2,4)])
#Q.1.5. Create a numeric vector of 10 random numbers between 1 and 100, then find:
set.seed(22)
random_numbers<- sample(1:100,10)
print(random_numbers)
# Q1.5.1. Maximum value
max<-max(random_numbers)
print(max)
#Q.1.5.2. Minimum value
min<-min(random_numbers)
print(min)
#Q.1.5.3. Mean
mean<-mean(random_numbers)
print(mean)
#Q1.6. Create a data frame with columns: Name, Age, Marks. Enter at least 5 records.
student_df<- data.frame(
  Name=c("Siddhi","Tanuja","Pranjali","Sarika","Sayali"),
  Age=c(20,19,17,33,18),
  Marks=c(90,80,90,70,60)
)
sorted_df<-student_df[order(-student_df$Marks),]
print(sorted_df)

#############################################
#Operators in R

#Q.1. Perform the following operations:
#Q1.1. 10 + 5
print(10+5)
#Q1.2. 10 - 5
print(10-5)
#Q1.3. 10 * 5
print(10*5)
#Q1.4. 10 / 5
print(10/5)
#Q1.5. 10 %% 3
print(10%%5)
#Q1.6. 10 %/% 3
print(10%/%3)
#Q2 Compare if 15 is greater than 10, and if 7 is equal to 7.
print(15<10)
print(7==7)
#Q3 Create two vectors:
a <- c(2, 4, 6, 8)
b <- c(1, 3, 5, 7)
#Perform:
#Q3.1. Addition
print(a+b)
#Q3.2. Subtraction
print(a-b)
#Q3.3. Element-wise multiplication
print(a*b)
#Q4. Use logical operators to check:
  #Q4.1. Which elements of a are greater than 5?
print(a>5)
  #Q4.2. Which elements of b are less than or equal to 4?
print(b<=4)
#Q.5. Use %in% to check if the number 5 exists in vector a.
print(5 %in% a)
#6.Given x <- c(TRUE, FALSE, TRUE, FALSE) and y <- c(TRUE, TRUE, FALSE, FALSE), apply:
x <- c(TRUE, FALSE, TRUE, FALSE) 
y <- c(TRUE, TRUE, FALSE, FALSE)
  #6.1. &
print(x&y)
  #6.2. |
print(x|y)
  #6.3. !
print(!y)
print(!x)
########################################################33
#Loops in R
#Q1. Write a for loop to print numbers from 1 to 10.
for(i in 1:10){
  print(i)
}
#Q2. Write a while loop to sum numbers from 1 to 100.
sum <- 0
i <- 1
while (i <= 100) {
  sum <- sum + i
  i <- i + 1
}
print(sum)  
#Q3. Write a loop to print only even numbers between 1 and 50.
for (i in 1:50) {
  if (i %% 2 == 0) {
    print(i)
  }
}
#Q4. Write a loop to print the multiplication table of 7.
for (i in 1:10) {
  cat("7 x", i, "=", 7 * i, "\n")
}
#Q5. Create a loop to calculate the factorial of a given number n.
n <- 5
fact <- 1
for (i in 1:n) {
  fact <- fact * i
}
print(fact)  # Output: 120
#Q6. Write a nested loop to print a star pattern:
rows <- 5
for (i in 1:rows) {
  for (j in 1:i) {
    cat("*")
  }
  cat("\n")
}

################################################
#Conditionals in R
#Q1. Write an if statement to check if a number is positive or negative.
num <- -5
if (num >= 0) {
  print("Positive")
}
#Q2. Write an if-else statement to check if a given number is even or odd.
num <- 7
if (num %% 2 == 0) {
  print("Even")
} else {
  print("Odd")
}
#Q3. Write a program to check if a given year is a leap year.
year <- 2024
if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  print("Leap Year")
} else {
  print("Not a Leap Year")
}
#Q4. Take a numeric input for marks and print:
#“Pass” if marks >= 40
#“Fail” otherwise
marks <- 38
if (marks >= 40) {
  print("Pass")
} else {
  print("Fail")
}

#Q5. Using nested if-else, assign grades:
#Marks >= 90 → A
#75–89 → B
#60–74 → C
#<60 → Fail
marks <- 82

if (marks >= 90) {
  print("Grade: A")
} else if (marks >= 75) {
  print("Grade: B")
} else if (marks >= 60) {
  print("Grade: C")
} else {
  print("Fail")
}
########################################33
#Functions in R

#Q1. Write a function add_numbers(a, b) to return the sum of two numbers.
add_numbers <- function(a, b) {
  return(a + b)
}
#Q2. Write a function square(n) to return the square of a number.
square <- function(n) {
  return(n^2)
}
#Q3. Write a function to calculate the factorial of a number using recursion.
factorial_recursive <- function(n) {
  if (n == 0 || n == 1) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}
#Q4. Write a function to check if a number is prime.
is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}
#Q5. Write a function that takes a vector and returns:
  # Mean
  # Median
  #Standard Deviation
vector_summary <- function(vec) {
  return(list(
    mean = mean(vec),
    median = median(vec),
    sd = sd(vec)
  ))
}
#Q6. Write a function that accepts a data frame and a column name, and returns the top 5 highest values in that column.
top_5_values <- function(df, column_name) {
  sorted <- df[order(-df[[column_name]]), ]
  return(head(sorted[[column_name]], 5))
}

################################################

#Q6 Data Analysis-Adult Census Dataset
#Q6.1 Load the adult dataset into r
#data set should  be present in working directory
cols <- c("age", "workspace", "fnlwgt", "education", "education_num",
          "marital_status", "occupation", "relationship", "race", "sex",
          "capital_gain", "capital_loss", "hours_per_week", "native_country", "income")

adult <- read.csv("adult-data.txt",
                  header = FALSE,
                  col.names = cols,
                  strip.white = TRUE,
                  na.strings = "?",
                  stringsAsFactors = FALSE)

#Q6.2 Display the first 10
head(adult,10)

#Q.3Find the structure of the dataset.
str(adult)


#Average age
mean(adult$age)

#Count Individuals Income
table(adult$income)

#most common occupation
occ_counts <- sort(table(adult$occupation),
                   decreasing=TRUE)

occ_counts
most_common_occupation <- names(occ_counts)
print(most_common_occupation)
?names

#Q6.7
print(tapply(adult$hours_per_week,adult$income,mean, na.rm= TRUE ))
?tapply

#Q6.8
edu_counts<- sort(table(adult$education)
                  ,increasing=TRUE)
barplot(edu_counts)

#9.Native country with highest percentage
tbl <- with(adult,table(native_country,income))
prop_over50k <- tbl[, ">50K"] / rowSums(tbl)
print(prop_over50k)
barplot(prop_over50k)

#7.Data Analysis in IPL Dataset
#7.1.Load the IPL dataset into R.
data <- read.csv("batting_bowling_ipl_bat.csv")
#7.2.Display the first 10 rows.
print(head(data,n=10))
#7.3.Find the top 5 players with the highest total runs.
install.packages("dplyr")
library(dplyr)
top5_players<- data %>%
  group_by(Name) %>%
  summarize(Total_Runs= sum(Runs,na.rn=TRUE)) %>%
  arrange(desc(Total_Runs))%>%
  slice_head(n=5)
print(top5_players)
#7.4.Find the player with the highest batting average.
highest_batting_avg <- data %>%
  group_by(Name) %>%
  summarize(
    Total_Runs = sum(Runs, na.rm = TRUE),
    Inning_Played = n()
  ) %>%
  mutate(Batting_Average = Total_Runs / Inning_Played) %>%
  arrange(desc(Batting_Average)) %>%
  slice_head(n = 5)

print(highest_batting_avg)

  