# -----------------------------------------------
# R Programming
#
# Learning R
# Chapter 5 - Lists and Data Frames
#
# -----------------------------------------------

# lists
a_list <- c(12, 23, 15, 18, 25)
a_list

# add names
names(a_list) <- c("Apples", "Bananas", "Cherries", "Oranges", "Pears")
a_list


length(a_list)
dim(a_list)
nrow(a_list)
ncol(a_list)
NROW(a_list)
NCOL(a_list)

a_list[[1]]
a_list[["Cherries"]]

# data frame
(a_data_frame <- data.frame(
  x = letters[1:5],
  y = c(1:5),
  z = runif(5) > 0.5,
  row.names = c("foo", "bar", "baz", "qud", "quud")
))

# data frame functions
class(a_data_frame)

rownames(a_data_frame)
colnames(a_data_frame)
dimnames(a_data_frame)

nrow(a_data_frame)
ncol(a_data_frame)
dim(a_data_frame)

length(a_data_frame)
names(a_data_frame)










