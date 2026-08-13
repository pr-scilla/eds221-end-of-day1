initialize_reef <- function(coral_number) {
  reef <- matrix(0, nrow = 5, ncol = 5)
  random_coral <- sample(1:25, size = coral_number)
  for (rc in random_coral) {
    rc_row <- (rc - 1) %/% 5 + 1
    rc_col <- (rc - 1) %% 5 + 1
    reef[rc_row, rc_col] <- 1
  }
  return(reef)
}

growth <- function(coral_outcome) {
  coral_outcome <- sum(sample (1:6), size = 2, replace = TRUE)
  {if (coral_outcome <=3) {
    reef[r,c] <- 0
    print ("coral died")
  } else {
    reef[r, c] <- 1
    print ("coral survived")
  }
  return(reef)}
}

#growth <- function(reef, roll, row, col) {
 # growth_row_offset <- c(-1, -1, -1, 0, 1, 1, 1, 0)
  #growth_col_offset <- c(-1, 0, 1, 1, 1, 0, -1, -1)

  #growth_row <- row + growth_row_offset[roll]
  #growth_col <- col + growth_col_offset[roll]

  #reef[growth_row, growth_col] <- 1

  #return(reef)
}
