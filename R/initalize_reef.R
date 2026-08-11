set.seed(32)

coral_reef_matrix <- matrix(data = 0, nrow = 5, ncol = 5)
coral_reef_matrix

random <- sample(1:25, size= 8, replace = FALSE)
cell_label <- 9
cell_row <- (cell_label - 1) %/% 5 + 1
cell_col <- (cell_label - 1) %% 5 + 1
coral_reef_matrix[cell_row, cell_col] <- 1
coral_reef_matrix
