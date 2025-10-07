A <- 20
class(A)
?read.table

# Q.1(a) Name, age, student
Name <- c("Nehal", "Neha")
Age <- c(20, 30)
is_student <- TRUE
value <- TRUE
is_student <- is.logical(value)
print(is_student)

#Q.2 Vector creation 
vec <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

#Q.3 Sequence creation
?seq
s <- seq(5, 50, by = 5)

#Q.4 Vector creation with indexing of 2nd and 4th position
fruit <- c("Apple", "Banana", "Chikku", "Strawberry", "Melon")
fruit[c(2, 4)]


?sample
set.seed(1)
num <- sample(1:100, 10)
num

max(num); min(num); mean(num)

df <- data.frame(
  Name = c("Meet", "Nehal", "Munazza", "Ashraf"),
  Age = c(20, 21, 22, 23),
  Marks = c(100, 90, 80, 70)
)
df

df[order(-df$Marks)]

#2. Operators in R

#Q.2(1). Perform the following operations:
 10 + 5
 10 - 5
 10 * 5
 10 / 5
 10 %% 3
 10 %/% 3
 
#Q.2(2). Compare if 15 is greater than 10, and if 7 is equal to 7.
 15 > 7
 7 == 7
 
#Q.2(3). Create two vectors:
   a <- c(2, 4, 6, 8)
   b <- c(1, 3, 5, 7)
 #Perform:
 #1. Addition
 #2. Subtraction
 #3. Element-wise multiplication
   
 a + b
 a - b
 a * b
 
 #Q.2(4). Use logical operators to check:
   #1. Which elements of a are greater than 5?
   #2. Which elements of b are less than or equal to 4?
 
 a[a > 5]
 b[b <= 4]
 
 #Q.2(5))Use %in% to check if the number 5 exists in vector a.
 
 5%in%a
 
 #Q.2(6). Given x <- c(TRUE, FALSE, TRUE, FALSE) and y <- c(TRUE, TRUE, FALSE, FALSE), apply:
   #1. &
   #2. |
   #3. !
 x <- c(TRUE, FALSE, TRUE, FALSE)
 y <- c(TRUE, TRUE, FALSE, FALSE)
 
 x & y 
 x | y
 !x
 !y
 
#Q.3. Loops in R
 
 #1. Write a for loop to print numbers from 1 to 10.
 a <- 1
 for(a in 1:10) 
   print(a)
 
 #2.Write a while loop to sum numbers from 1 to 100.
sum <- 0
i <- 1
 
while(i <= 100) {
  sum <- sum + i
  i <- i + 1
}
print(sum)

Q3. Write a loop to print only even numbers between 1 and 50.
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

#Q6 Data Analysis-Adult Census Dataset
#Q6.1 Load the adult dataset into r data set should  be present in working directory

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

#Q.7 Analysis in IPL Dataset
#Q.7.1.Load the IPL dataset into R.

data <- read.csv("batting_bowling_ipl_bat.csv")

#Q.7.2.Display the first 10 rows.
print(head(data,n=10))

#Q.7.3.Find the top 5 players with the highest total runs.
install.packages("dplyr")
library(dplyr)
top5_players<- data %>%
  group_by(Name) %>%
  summarize(Total_Runs= sum(Runs,na.rn=TRUE)) %>%
  arrange(desc(Total_Runs))%>%
  slice_head(n=5)
print(top5_players)

#Q.7.4.Find the player with the highest batting average.
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


 
 