# -----------------------------------------------
# R Programming
#
# Learning R
# Chapter 2 - Scientific Calculator
#
# -----------------------------------------------

sum(1:5)
median(1:5)

sum(1, 2, 3, 4, 5)
median(1, 2, 3, 4, 5)

x <- 1:5
x

y = 6:10
y

z <- 1:5 + 6:10
z

x <- c(1:10) ** 2
x

# special numbers
x <- c(0, Inf, -Inf, NaN, NA)
x
is.finite(x)
is.infinite(x)
is.nan(x)
is.na(x)

# NA   - not available
# NaN  - not a number
# NULL - no value
y <- NULL
y
is.null(y)

# any and all
none_true <- c(FALSE, FALSE, FALSE)
some_true <- c(FALSE, TRUE, FALSE)
all_true <- c(TRUE, TRUE, TRUE)

any(none_true)
any(some_true)
any(all_true)

all(none_true)
all(some_true)
all(all_true)

