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