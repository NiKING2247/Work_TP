# Задание 2. Используя документацию пакета purrr опишите отличия и особенности
# функций семейства map_*. Приведите примеры реализации с использование различных
# тестовых данных. Данные можно брать из пакета datasets или создав свои тестовые наборы.
# Для просмотра данных из пакета datasets выполните код library(help = "datasets")


library(purrr)
library(datasets)

print("=== map functions examples ===")

data1 <- list(
  a = c(23, 45, 67, 89, 12),
  b = c(34, 56, 78, 90, 11),
  c = c(45, 67, 89, 10, 22)
)

data2 <- list(
  fruits = c("apple", "banana", "cherry", "date"),
  colors = c("red", "green", "blue", "yellow"),
  animals = c("cat", "dog", "bird", "fish")
)

data3 <- list(
  vector_num = 1:5,
  vector_char = letters[1:5],
  matrix_ex = matrix(1:9, nrow = 3),
  data_frame = data.frame(x = 1:3, y = 4:6)
)

print("map example:")
map_result <- map(data1, mean)
print(map_result)

print("map_dbl example:")
map_dbl_result <- map_dbl(data1, mean)
print(map_dbl_result)

print("map_chr example:")
map_chr_result <- map_chr(data2, ~ paste(.x, collapse = ", "))
print(map_chr_result)

print("map_int example:")
map_int_result <- map_int(data1, length)
print(map_int_result)

print("map_lgl example:")
map_lgl_result <- map_lgl(data1, ~ any(.x > 80))
print(map_lgl_result)

print("map2 example:")
map2_result <- map2(data1$a, data1$b, ~ .x + .y)
print(map2_result)

print("pmap example:")
pmap_data <- list(x = 1:3, y = 4:6, z = 7:9)
pmap_result <- pmap(pmap_data, ~ ..1 + ..2 + ..3)
print(pmap_result)

print("map_if example:")
map_if_result <- map_if(data1, ~ mean(.x) > 50, ~ .x * 2)
print(map_if_result)

print("map_at example:")
map_at_result <- map_at(data1, c("a", "c"), ~ .x + 100)
print(map_at_result)

print("walk example:")
walk(data2, print)

print("map_dfr example:")
map_dfr_result <- map_dfr(data1, ~ data.frame(value = .x))
print(map_dfr_result)

print("map_dfc example:")
map_dfc_result <- map_dfc(data1, ~ as.data.frame(.x))
print(map_dfc_result)

print("modify example:")
modify_result <- modify(data1, ~ .x + 1)
print(modify_result)

print("keep example:")
keep_result <- keep(data1, ~ mean(.x) > 50)
print(keep_result)

print("discard example:")
discard_result <- discard(data1, ~ mean(.x) > 50)
print(discard_result)

print("reduce example:")
reduce_result <- reduce(data1$a, `+`)
print(reduce_result)

print("accumulate example:")
accumulate_result <- accumulate(data1$a, `+`)
print(accumulate_result)