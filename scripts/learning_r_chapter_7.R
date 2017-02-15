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

r_prog <- c("R is a language and environment for statistical computing and graphics.")
r_prog


