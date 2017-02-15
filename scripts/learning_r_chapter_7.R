# R Programming
# Learning R
# Chapter 7

# string
a_string <- c("Hello World!")
a_string

# paste
paste(c("angular", "d3", "jquery", "node"), "js", sep = ".")
paste(c("apple", "cherry", "orange", "pear"), collapse = ", ")

# toString
x <- (1:10) ^ 3
toString(x)
toString(x, width = 40)

# cat
cat(c("Mongo", "Express", "Angular"), "Node")

# formatting numbers
pow <- 1:5
(powers_of_e <- exp(pow))

# formatC
formatC(powers_of_e)
formatC(powers_of_e, digits = 3)                  # add 3 significant digits
formatC(powers_of_e, digits = 3, width = 10)      # add column width
formatC(powers_of_e, digits = 3, format = "e")    # scientific formatting
formatC(powers_of_e, digits = 3, flag = "+")      # precede positive values with "+"

# format - similar to formatC, but different syntax
format(powers_of_e)
format(powers_of_e, digits = 3)
format(powers_of_e, digits = 3, trim = TRUE)
format(powers_of_e, digits = 3, scientific = TRUE)

# special characters
cat("foo\tbar\tbaz", fill = TRUE)
cat("foo\nbar\nbaz", fill = TRUE)
cat("foo\\bar\\baz", fill = TRUE)
cat("foo\"bar\"baz", fill = TRUE)
cat("foo\'bar\'baz", fill = TRUE)
cat('foo"bar"baz', fill = TRUE)
cat("foo'bar'baz", fill = TRUE)

# case
toupper("Hello World!")
tolower("Hello World!")

# substrings
r_prog <- c("R is a language and environment for statistical computing and graphics.")
r_prog

?substring
substring(r_prog, 1, 15)

?substr
substr(r_prog, 1, 31)

# file paths
getwd()

file.path("c:", "development", "R", "scripts")

R.home()

path.expand("~")

file_name <- "C:/Program Files/R/R-3.2.2/bin/x64/Rgui.exe"
basename(file_name)
dirname(file_name)

# factors
(ages <- data.frame(
  gender = c("male", "female", "male", "female", "female",
             "male", "female", "male", "female", "female"),
  num_years = c(28, 32, 25, 37, 44, 52, 43, 29, 35, 46)
))

# inspect classes of columns
class(ages$gender)
class(ages$num_years)

# list out factors
ages$gender

# get factor levels and number of factors
levels(ages$gender)
nlevels(ages$gender)
  
  
  
  
  
  
  
  
  
  
  