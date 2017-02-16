# -----------------------------------------------
# R Programming
#
# Learning R
# Chapter 1 - Introduction
#
# -----------------------------------------------

# first R program
mean(1:5)

# getting help
help("mean")
help("if")
help.search("plotting")

# can also use a single or double question marks
?mean
?"if"
??plotting
??"regression model"

# vector example
a_vector <- c(1, 3, 6, 10, 14)
a_vector

# a few more vector examples
x_vector <- c(0,1,1,2,3,5,8,13,21,34)
x_vector
mean(x_vector)
sd(x_vector)
median(x_vector)

# vector with NA values and how to handle
y_vector <- c(0,1,1,2,NA,3,5,8,13,21,34,NA)
y_vector
mean(y_vector, na.rm=TRUE)
sd(y_vector, na.rm=TRUE)
median(y_vector, na.rm=TRUE)

# finding variables that contain the string 'vector'
apropos("vector")

# most functions have examples and demos
example(plot)
demo(barplot())
