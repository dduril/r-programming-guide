# R Programming
# Learning R
# Chapter 6

# environment variables and functions
my_environment <- new.env()

my_environment[["a_vector"]] <- c(1:10)
my_environment[["x"]] <- 100

assign(
  "greeting",
  "Hello World!",
  my_environment
)

my_environment[["a_vector"]]

get("greeting", my_environment)

ls(my_environment)
ls.str(my_environment)

exists("x", my_environment)
exists("greeting", my_environment)
exists("farewell", my_environment)

(a_list <- as.list(my_environment))

# global environment
head(ls(envir = baseenv()), 25)

# functions

#Fahrenheit to Celsius Formula:
# C = (F - 32) × 5/9
fahrenheit_to_celsius <- function(x) {
  (x - 32) * 5/9
}

fahrenheit_to_celsius(100)

#  Celsius to Fahrenheit Formula:
#  F = C × 9/5 + 32
celsius_to_fahrenheit <- function(x){
  x * 9/5 + 32
}

celsius_to_fahrenheit(37.78)








