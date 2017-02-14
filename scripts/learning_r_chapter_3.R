# R Programming
# Learning R
# Chapter 3

# classes
class(c(TRUE, FALSE))
class(sqrt(1:10))
class(3 + 1i)
class(1)
class(1L)
class(0.5:4.5)
class(1:5)
class("Hello")

(gender <- factor(c("male", "female", "female", "male", "female")))
levels(gender)
nlevels(gender)
as.integer(gender)

# get a complete list of classes
ls(pattern = "^is", baseenv())

v <- c(1, 2, 3, 4, 5)
v
if(is(v, "vector"))
{
  print("Vector")
}
if(!is(v, "list"))
{
  print("Not a list")
}

is.numeric(1)
is.numeric(1L)
is.integer(1)
is.integer(1L)
is.double(1)
is.double(1L)

x <- "123.456"
as.numeric(x)

x <- "123.456"
class(x)
class(x) <- "numeric"
class(x)
is.numeric(x)

nums <- c(1:10)
for(i in nums) print(i)

# create some variables to find
apple <- 10
cherry <- "in season"
pineapple <- TRUE

# list variables in workspace
ls()
ls(pattern = "pp")

# remove variables from workspace
rm(apple, cherry)
ls()