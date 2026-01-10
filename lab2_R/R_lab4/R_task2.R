# Задание 2. Напишите функцию get_negative_values, которая получает на вход dataframe
# произвольного размера. Функция должна для каждой переменной в данных проверять, есть ли
# в ней отрицательные значения. Если в переменной отрицательных значений нет, то эта
# переменная нас не интересует, для всех переменных, в которых есть отрицательные значения
# мы сохраним их в виде списка или матрицы, если число элементов будет одинаковым в каждой
# переменной (смотри пример работы функции).

get_negative_values <- function(data_frame) {
  negative_list <- list()
  
  for(column_name in names(data_frame)) {
    column_data <- data_frame[[column_name]]
    negative_values <- column_data[column_data < 0 & !is.na(column_data)]
    
    if(length(negative_values) > 0) {
      negative_list[[column_name]] <- negative_values
    }
  }
  
  if(length(negative_list) == 0) {
    return(list())
  }
  
  lengths_vec <- sapply(negative_list, length)
  
  # Check if all columns have same number of negative values
  if(length(unique(lengths_vec)) == 1) {
    rows_count <- lengths_vec[1]
    cols_count <- length(negative_list)
    
    result_matrix <- matrix(NA, nrow = rows_count, ncol = cols_count)
    colnames(result_matrix) <- names(negative_list)
    
    for(i in 1:cols_count) {
      result_matrix[, i] <- negative_list[[i]]
    }
    return(result_matrix)
  } else {
    return(negative_list)
  }
}

# Test cases
test_data1 <- as.data.frame(list(
  V1 = c(NA, -0.5, -0.7, -8), 
  V2 = c(-0.3, NA, -2, -1.2),
  V3 = c(1, 2, 3, NA)
))

test_data2 <- as.data.frame(list(
  V1 = c(-9.7, -10, -10.5, -7.8, -8.9), 
  V2 = c(NA, -10.2, -10.1, -9.3, -12.2), 
  V3 = c(NA, NA, -9.3, -10.9, -9.8)
))

cat("Test 1:\n")
print(get_negative_values(test_data1))

cat("\nTest 2:\n")
print(get_negative_values(test_data2))

# Additional test with mixed lengths
test_data3 <- as.data.frame(list(
  A = c(1, -1, -2, 3),
  B = c(-1, -2, 4, 5, -3),
  C = c(2, 3, 4)
))

cat("\nTest 3 (mixed lengths):\n")
print(get_negative_values(test_data3))