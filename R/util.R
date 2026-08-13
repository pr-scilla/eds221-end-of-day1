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
