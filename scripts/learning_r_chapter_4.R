# -----------------------------------------------
# R Programming
#
# Learning R
# Chapter 4 - Vectors, Matrices, and Arrays
#
# -----------------------------------------------

# vectors
numeric(5)
complex(5)
logical(5)
character(5)

a_vector <- c(1, 2, 4, 7, 12)
a_vector

# create a sequence
v = seq(from=1, to=100, by=2)
v

# get values greater than 40 and less than 60
v <- v[ v > 40 & v < 60 ]
v

# reset the sequence
v = seq(from=1, to=100, by=2)
v

# get values less than 20 or greater than 80
v <- v[ v < 20 | v > 80 ]
v

# sequences
s <- seq.int(1, 12)
s

s <- seq.int(0, 15, 3)
s

s <- seq.int(0.01, 0.1, 0.01)
s

social_media <- c("Github", "Facebook", "LinkedIn", "Pinterest", "Twitter")
for(i in seq_along(social_media)) print(social_media[i])

# lengths
length(1:10)

length(social_media)
nchar(social_media)

# names
x <- c(apple = 1, banana = 2, cherry = 3, "kiwi fruit" = 4, orange = 5)
x

x <- 1:5
names(x) <- c("apple", "banana", "cherry", "kiwi", "orange")
x
names(x)

x <- (1:5) ^ 2
names(x) <- c("one", "four", "nine", "sixteen", "twenty five")
x[c("one", "nine", "twenty five")]
x[]
x[6]
which(x > 10)
which.min(x)
which.max(x)

# repetition
1:5 + 1
1 + 1:5
1:5 + 1:15
rep(1:5, 3)
rep(1:5, each = 3)
rep(1:5, times = 1:5)

# matrices and arrays
(a_matrix <- matrix(
  1:12,
  nrow = 4,
  dimnames = list(
    c("Row 1", "Row 2", "Row 3", "Row 4"),
    c("Col A", "Col B", "Col C")
  )
))
class(a_matrix)
dim(a_matrix)
nrow(a_matrix)
ncol(a_matrix)
length(a_matrix)
dimnames(a_matrix)
rownames(a_matrix)
colnames(a_matrix)

(three_d_array <- array(
  1:24,
  dim = c(4, 3, 2),
  dimnames = list(
    c("Row 1", "Row 2", "Row 3", "Row 4"),
    c("Col A", "Col B", "Col C"),
    c("Block 1", "Block 2")
  )
))
class(three_d_array)
dim(three_d_array)
nrow(three_d_array)
ncol(three_d_array)
length(three_d_array)
dimnames(three_d_array)
rownames(three_d_array)
colnames(three_d_array)


