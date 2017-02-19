# -----------------------------------------------
# R Programming
#
# Learning R
# Chapter 9 - Advanced Looping
#
# -----------------------------------------------

# replication
rep(runif(1), 5)

replicate(5, runif(1))

# looping over lists
prime_factors <- list(
  two   = 2,
  three = 3,
  four  = c(2, 2),
  five  = 5,
  six   = c(2, 3),
  seven = 7,
  eight = c(2, 2, 2),
  nine  = c(3, 3),
  ten   = c(2, 5)
)
head(prime_factors, 5)

# lapply, vapply, sapply
lapply(prime_factors, unique)

vapply(prime_factors, length, numeric(1))

sapply(prime_factors, unique)  # returns a list
sapply(prime_factors, length)  # returns a vector
sapply(prime_factors, summary) # returns an array

# split-apply-combine example
# step 0: create data frame
(frogger_scores <- data.frame(
  player = rep(c("John", "Lisa", "Mike"), times = c(2, 5, 3)),
  score = round(rlnorm(10, 8), -1)
))

# step 1: split
(scores_by_player <- with(
  frogger_scores,
  split(score, player)
))

# step 2: apply
(list_of_means_by_player <- lapply(scores_by_player, mean))

# step 3: combine
(mean_by_player <- unlist(list_of_means_by_player))

with(frogger_scores, tapply(score, player, mean))

# plyr
library("plyr")
llply(prime_factors, unique)
laply(prime_factors, length)

# back to the frogger example - add level column
frogger_scores$level <- floor(log(frogger_scores$score))
ddply(
  frogger_scores,
  .(player),
  colwise(mean)
)

ddply(
  frogger_scores,
  .(player),
  summarise,
  mean_score = mean(score),
  max_level = max(level)
)
