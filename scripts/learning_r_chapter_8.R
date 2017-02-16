# -----------------------------------------------
# R Programming
#
# Learning R
# Chapter 8 - Flow Control and Loops
#
# -----------------------------------------------

# if else
if(TRUE) message("True")
if(FALSE) message("False")

if(is.na(NA)) message("The value is missing")

x <- 5
if(x > 4){
  y <- x ^3
  z <- y ** 2
}
sprintf("x = %d, y = %d, z = %d", x, y, z)

if(FALSE){
  message("This won't execute...")
} else {
  message("This will execute.")
}

x <- 1
if(is.nan(x)){
  message("x is missing")
} else if(is.infinite(x)){
  message("x is infinite")
} else if(x > 0){
  message("x is positive")
} else if(x < 0){
  message("x is negative")
} else {
  message("x is zero")
}

# vectorized if
ifelse(rbinom(12, 1, 0.5), "Heads", "Tails")

# switch
switch(
  4,
  "first",
  "second",
  "third",
  "fourth",
  "fifth"
)

# repeat
repeat{
  message("Continue programming")
  action <- sample(
    c(
      "Analyze",
      "Prototype",
      "Develop",
      "Test",
      "Release"
    ),
    1
  )
  message("action = ", action)
  if(action == "Release") break
}

# repeat with next (continue)
repeat{
  message("Continue programming")
  action <- sample(
    c(
      "Analyze",
      "Prototype",
      "Develop",
      "Goto meeting",
      "Test",
      "Release"
    ),
    1
  )
  if(action == "Goto meeting"){
    message(">> action = ", action)
    message(">> Just continue programming")
    next
  }
  message(">> action = ", action)
  if(action == "Release") break
}

# while loop
action <- sample(
  c(
    "Analyze",
    "Prototype",
    "Develop",
    "Test",
    "Release"
  ),
  1
)
while(action != "Release") {
  message("Continue programming")
  action <- sample(
    c(
      "Analyze",
      "Prototype",
      "Develop",
      "Test",
      "Release"
    ),
    1
  )
  message(">> action = ", action)
}

# for loops
for(i in 1:5) message("i = ", i)

# using sprintf for better formatting
for(i in 1:5){
  j <- i ^ 3
  x <- sprintf("i = %d, j = %d", i, j)
  print(x)
}

# using months
for(month in month.name){
  message("The month of ", month)
}

# a few more examples
for(yn in c(TRUE, FALSE, NA)){
  message("This statement is ", yn)
}

l <- list(
  pi,
  letters[1:26],
  LETTERS[1:26],
  list(
    TRUE,
    FALSE,
    NA
  )
)
for(i in l){
  print(i)
}
