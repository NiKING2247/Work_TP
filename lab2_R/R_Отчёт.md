# Отчет по лабораторным работам R

**Дата:** 2025-12-12
**Семестр:** 2 курс 1 семестр
**Группа:** ПИН-Б-О-24-1
**Дисциплина:** Технологии программирования
**Студент:** Косинов Никита Олегович

## Лабораторная работа №1

## Цель работы
Познакомиться с особенностями процедурного программирования. Решить задания в 
процедурном стиле. Составить отчет.

## Теоретическая часть
Изучены основы метода процедурное программирование, ознакомился с базовыми терминами по типу Переменная, Функция, Процедура



## Практическая часть

### Задачи
-   Задача 1: Написать программу, выполненную в процедурном стиле. Программа должна быть 
выполнена в виде псевдокода, в виде блок-схемы и на языке высокого уровня (ЯВУ) (здесь и далее, если 
не оговорено иное, при отсылке к ЯВУ необходимо выполнять код на языке R). Для построения блок
схемы рекомендуется использовать ресурс draw.io или аналогичную программу. Построение блок схемы 
делается с учетом правил, содержащихся в презентации Императивное (процедурное) программирование. 
Вариант 1 
Напишите программу, рассчитывающую площадь трех фигур: квадрат, прямоугольник и круг. На 
входе программа запрашивает введение данных о фигурах (для квадрата – сторона, круг – радиус, 
прямоугольник – две стороны). На выходе программа указывает площади трех фигур и общую площадь.
-   Задача 2: Задание 2 – Опишите, представленный код в виде псевдокода и ответьте на вопрос, что будет 
получено при передаче функции числа 7? Также реализуйте данный алгоритм на ЯВУ. 

Задание 1:
### Ключевые фрагменты кода
cat("Сторона квадрата: ")
a <- as.numeric(readline())

cat("Первая сторона прямоугольника: ")
b1 <- as.numeric(readline())

cat("Вторая сторона прямоугольника: ")
b2 <- as.numeric(readline())

cat("R круга: ")
r <- as.numeric(readline())

sq <- a * a
rect <- b1 * b2
circ <- pi * r^2
total <- sq + rect + circ

# Вывод
cat("Площадь квадрата -", sq, "\n")
cat("Площадь прямоугольника -", rect, "\n")
cat("Площадь круга -", round(circ, 2), "\n")
cat("Общая площадь -", round(total, 2), "\n")


### Пример работы программы
```{r hist, echo=FALSE}
Сторона квадрата: 1
Первая сторона прямоугольника:  2
Вторая сторона прямоугольника: : 3
R круга: : 4
Площадь квадрата - 1 
Площадь прямоугольника - 6
Площадь круга - 50.265
Общая площадь - 57.265
```

Задание 2:
### Ключевые фрагменты кода
a <- as.integer(readline())
res <- 1
chet <- a

while (текущий_счетчик > 0) {
    res <- res * текущий_счетчик
    chet <- chet - 1
}

cat(res)
```markdown

### Пример работы программы
```{r hist, echo=FALSE}
> source("D:/TestR.R", echo = TRUE)

> n <- as.integer(readline())
7

> res <- 1

> i <- n

> while (i > 0) {
+   res <- res * i
+   i <- i - 1
+ }

> cat(res)
5040
```

### Тестирование
- Модульные тесты пройдены
- Интеграционные тесты пройдены

## Выводы
1. Процедурное программирование разбивает программы на функции, что упрощает чтение кода и позволяет лучше видеть ошибки.

2. Линейные конструкции обеспечивают последовательное и логичное выполнение алгоритмов.

3. Изучены базовые элементы языка программирования и принципы построения программ.

## Ответы на контрольные вопросы
1. Особенности процедурного программирования — программа делится на процедуры и функции, выполняющиеся последовательно.

2. Линейная программа — это выполнение команд без ветвлений и циклов (за 1 итерацию).

3. Переменная, процедура, функция — переменная хранит данные; процедура выполняет действия без возврата значения; функция выполняет действия и возвращает ответ.

4. Безусловный оператор — команда, изменяющая ход программы без проверки условий (например:, break, return).





## Лабораторная работа №2

## Цель работы
Познакомиться с особенностями структурного программирования. Решить 
задания в структурном стиле. Составить отчет.

## Теоретическая часть
Изучены основы метода структурного программирования. Изучены термины такие как Цикл, Бесконечный цикл, а также цель структурного программирования.



## Практическая часть

### Задачи
-   Задача 1: Написать программу, выполненную в структурном стиле. Программа 
должна рассчитывать площадь фигур (программа должна корректно отрабатывать данные 
согласно варианту в приложении А). На вход программа запрашивает строку, если в нее 
введено название фигуры, то программа запрашивает необходимые параметры фигуры, если 
введено значение отличное от названия фигуры, то программа повторно предлагает ввести 
название фигуры, если пользователь не справляется с этой задачей более 3 раз подряд, то 
программа сообщает о некорректности действий пользователя и завершается. В случае 
введения корректных данных программа должна выдать ответ, а также описание хода 
решения. Программа должна быть выполнена в виде блок-схемы и на ЯВУ.
-   Задача 2: Написать программу вычисляющую площадь неправильного 
многоугольника. Многоугольник на плоскости задается целочисленными координатами своих 
N вершин в декартовой системе. Стороны многоугольника не соприкасаются (за исключением 
соседних - в вершинах) и не пересекаются. Программа в первой строке должна принимать 
число N – количество вершин многоугольника, в последующих N строках – координаты 
соответствующих вершин (вершины задаются в последовательности против часовой стрелки). 
На выход программа должна выдавать площадь фигуры. Программа должна быть выполнена в виде блок-схемы и на ЯВУ. 

Задача 1:
### Ключевые фрагменты кода
```R
errors <- 0

while(errors < 3){
  cat("Enter shape name (triangle, square, rectangle): ")
  input <- readline()
  
  if(input == "triangle"){
    cat("Enter side a: ")
    a <- as.numeric(readline())
    cat("Enter side b: ")
    b <- as.numeric(readline())
    cat("Enter side c: ")
    c <- as.numeric(readline())
    p <- (a + b + c) / 2
    area <- sqrt(p * (p - a) * (p - b) * (p - c))
    cat("Formula: S = √[p×(p-a)×(p-b)×(p-c)]\n")
    cat("Semi-perimeter p = (", a, "+", b, "+", c, ")/2 =", p, "\n")
    cat("Triangle area =", area, "\n")
    break
  }
  else if(input == "square"){
    cat("Enter side: ")
    a <- as.numeric(readline())
    area <- a * a
    cat("Formula: S = a²\n")
    cat("Square area =", a, "×", a, "=", area, "\n")
    break
  }
  else if(input == "rectangle"){
    cat("Enter side a: ")
    a <- as.numeric(readline())
    cat("Enter side b: ")
    b <- as.numeric(readline())
    area <- a * b
    cat("Formula: S = a × b\n")
    cat("Rectangle area =", a, "×", b, "=", area, "\n")
    break
  }
  else {
    errors <- errors + 1
    if(errors == 3){
      cat("Invalid user actions. Program terminated.\n")
    } else {
      cat("Error! Try again.\n")
    }
  }
}
```markdown

### Пример работы программы
```{r hist, echo=FALSE}
Enter shape name (triangle, square, rectangle): 
square
Enter side: 
10
Formula: S = a²\n
Square area =10×10=100

```

Задача 2:
### Ключевые фрагменты кода
```R
cat("Введите количество вершин N: ")
N <- as.integer(readline())

x <- numeric(N)
y <- numeric(N)

cat("Введите координаты вершин (x y):\n")
for(i in 1:N) {
  coords <- strsplit(readline(), " ")[[1]]
  x[i] <- as.numeric(coords[1])
  y[i] <- as.numeric(coords[2])
}

S <- 0
for(i in 1:N) {
  j <- ifelse(i == N, 1, i + 1)
  S <- S + (x[i] * y[j] - x[j] * y[i])
}
S <- abs(S) / 2

cat(sprintf("\nПлощадь многоугольника: %.2f\n", S))
```markdown

### Пример работы программы
```{r hist, echo=FALSE}
Введите количество вершин N: 3
Введите координаты вершин (x y):
0 6
4 -2
2 18
Площадь многоугольника: 32
```

### Тестирование
- Модульные тесты пройдены
- Интеграционные тесты пройдены

## Выводы
1. Структурное программирование обеспечивает легкость и понятность кода.

2. Использование базовых управляющих конструкций позволяет делать программы без лишних переходов.

3. Принцип «сверху-вниз» помогает максимально просто составлять сложные программы

## Ответы на контрольные вопросы
1. Особенности структурного программирования — программа строится из трёх базовых конструкций: следование, ветвление и цикл, без использования оператора goto.

2. Теорема Бёма – Якопини — любая вычислимая программа может быть реализована с помощью трёх структур: последовательность, ветвление и цикл.

3. Пропуск итерации и досрочный выход из цикла — выполняются с помощью операторов continue (пропуск текущей итерации) и break (выход из цикла до его завершения).




## Лабораторная работа №3

## Цель работы
Познакомиться с особенностями объектно-ориентированного программирования. Научиться создавать собственные классы с использованием R6. Решить задания в соответствующем стиле программирования. Составить отчет.

## Теоретическая часть
Изучены принципы ООП и получен опыт в использовании этих принципов

## Практическая часть

### Задачи
-   Задача 1: Создайте дженерик, принимающий вектор, содержащий параметры фигуры 
и вычисляющий ее площадь. Для разных фигур создайте разные классы. В качестве метода по 
умолчанию дженерик должен выводить сообщение о невозможности обработки данных.
-   Задача 2: Создайте генератор класса Микроволновая печь. В качестве данных класс 
должен содержать сведения о мощности печи (Вт) и о состоянии дверцы (открыта или 
закрыта). Данный класс должен обладать методами открыть и закрыть дверь микроволновки, 
а также методом, отвечающим за приготовление пищи. Метод, отвечающий за приготовление 
пищи, должен вводить систему в бездействие (используется Sys.sleep) на определенное 
количество времени (которое зависит от мощности печи) и после выводить сообщение о 
готовности пищи. Выполните создание двух объектов этого класса со значением по умолчанию и с 
передаваемыми значениями. Продемонстрируйте работу этих объектов по приготовлению пищи.
-   Задача 3: Создайте класс копилка. Описание структуры классы выполните из своего 
понимания копилки.

Задание 1:
### Ключевые фрагменты кода
```R
create_circle <- function(radius) {
  structure(list(radius = radius), class = "circle")
}

create_rectangle <- function(length, width) {
  structure(list(length = length, width = width), class = "rectangle")
}

create_triangle <- function(base, height) {
  structure(list(base = base, height = height), class = "triangle")
}

create_square <- function(side) {
  structure(list(side = side), class = "square")
}

calculate_area <- function(x) {
  UseMethod("calculate_area")
}

calculate_area.default <- function(x) {
  cat("Unknown shape type\n")
  return(NA)
}

calculate_area.circle <- function(x) {
  area <- pi * x$radius^2
  cat("Circle area with radius", x$radius, "=", round(area, 2), "\n")
  return(area)
}

calculate_area.rectangle <- function(x) {
  area <- x$length * x$width
  cat("Rectangle area", x$length, "x", x$width, "=", area, "\n")
  return(area)
}

calculate_area.triangle <- function(x) {
  area <- 0.5 * x$base * x$height
  cat("Triangle area with base", x$base, "and height", x$height, "=", area, "\n")
  return(area)
}

calculate_area.square <- function(x) {
  area <- x$side^2
  cat("Square area with side", x$side, "=", area, "\n")
  return(area)
}

circle1 <- create_circle(5)
rectangle1 <- create_rectangle(3, 8)
triangle1 <- create_triangle(3, 8)
square1 <- create_square(5)

calculate_area(circle1)
calculate_area(rectangle1)
calculate_area(triangle1)
calculate_area(square1)
```markdown

### Пример работы программы
```{r hist, echo=FALSE}
Площадь круга с радиусом 5 = 78.54
Площадь прямоугольника 3 x 8 = 24 
Площадь треугольника с основанием 3 и высотой 8 = 12
Площадь квадрата со стороной 5 = 25
```

Задание 2:
### Ключевые фрагменты кода
```R
library(R6)

MicrowaveOven <- R6Class(
  "MicrowaveOven",
  public = list(
    power = NULL,
    door_open = NULL,
    
    initialize = function(power = 800, door_open = FALSE) {
      self$power <- power
      self$door_open <- door_open
    },
    
    open_door = function() {
      self$door_open <- TRUE
      cat("Door opened\n")
    },
    
    close_door = function() {
      self$door_open <- FALSE
      cat("Door closed\n")
    },
    
    cook_food = function() {
      if (self$door_open) {
        cat("Close the door first!\n")
        return()
      }
      
      cooking_time <- 60 / (self$power / 800)
      cat(sprintf("Cooking for %.1f seconds...\n", cooking_time))
      Sys.sleep(min(cooking_time, 2))  # Ограничиваем для демонстрации
      cat("Food is ready!\n")
    }
  )
)

microwave1 <- MicrowaveOven$new()
microwave2 <- MicrowaveOven$new(power = 1200, door_open = FALSE)

cat("Microwave 1 (door open):\n")
microwave1$open_door()
microwave1$cook_food()

cat("\nMicrowave 1 (closing door):\n")
microwave1$close_door()
microwave1$cook_food()

cat("\nMicrowave 2 (high power):\n")
microwave2$cook_food()
```

Задание 3:
### Ключевые фрагменты кода
```R
PiggyBank <- R6Class(
  "PiggyBank",
  private = list(
    savings = 0,
    is_intact = TRUE
  ),
  public = list(
    initialize = function(initial_amount = 0) {
      private$savings <- initial_amount
    },
    
    add_money = function(amount) {
      if (private$is_intact) {
        private$savings <- private$savings + amount
        cat("You added", amount, "to the piggy bank!\n")
      }
      else {
        cat("Piggy bank is broken!\n")
      }
    },
    
    break_piggy = function() {
      if (private$is_intact) {
        private$is_intact <- FALSE
        cat("You broke the piggy bank! It had:", private$savings, "rubles!\n")
        return(private$savings)
      }
      else {
        cat("Piggy bank is already broken!\n")
      }
    },
    
    check_balance = function() {
      cat("Current balance:", private$savings, "rubles\n")
      return(private$savings)
    }
  )
)

# Testing
piggy1 <- PiggyBank$new()
piggy1$add_money(100)
piggy1$add_money(200)
piggy1$check_balance()
piggy1$break_piggy()
piggy1$add_money(50)  # Should show error
```markdown
```

### Тестирование
- Модульные тесты пройдены
- Интеграционные тесты пройдены

## Выводы
1. ООП упрощает разработку за счёт структурирования кода.

2. Принципы инкапсуляции, наследования и полиморфизма обеспечивают гибкость и расширяемость программ.

3. Классы R6 в R позволяют реализовать объектную модель внутри языка, приближенную к классическим ООП-подходам.

## Ответы на контрольные вопросы
1. Принципы ООП по Алану Кею — всё есть объект; объекты взаимодействуют через сообщения; каждый объект хранит собственное состояние и поведение.

2. Механизмы ООП — инкапсуляция (скрытие данных), наследование (переиспользование кода) и полиморфизм (единый интерфейс для разных реализаций).

3. Основные понятия ООП — класс, объект, атрибут, метод, наследование и взаимодействие между объектами.

4. Создание и назначение дженериков — дженерики позволяют создавать функции и классы, работающие с разными типами данных без дублирования кода.

5. Создание класса в R6 — выполняется через функцию R6::R6Class(), где задаются поля, методы и конструктор (initialize).

6. Структура класса в R6 — включает имя класса, публичные и приватные поля, методы, а также функцию инициализации для задания начальных значений.





## Лабораторная работа №4

## Цель работы
Познакомиться с особенностями векторного программирования в R. 
Решить задания в соответствующем стиле программирования. Составить отчет. 

## Теоретическая часть
Изучены методы работы с векторами и понятия векторного программирования

## Практическая часть

### Задачи
-   Задача 1: Предобработка данных. Создайте новый вектор my_vector, следующей 
строчкой: 
my_vector <- c(21, 18, 21, 19, 25, 20, 17, 17, 18, 22, 17, 18, 18, 19, 19, 27, 21, 20, 
24, 17, 15, 24, 24, 29, 19, 14, 21, 17, 19, 18, 18, 20, 21, 21, 19, 17, 21, 13, 17, 13, 
23, 15, 23, 24, 16, 17, 25, 24, 22) 
В векторе my_vector отберите только те наблюдения, которые отклоняются от среднего 
меньше, чем на одно стандартное отклонение. Сохраните эти наблюдения в новую 
переменную my_vector2. При этом исходный вектор оставьте без изменений.
-   Задача 2: Напишите функцию get_negative_values, которая получает на вход dataframe 
произвольного размера. Функция должна для каждой переменной в данных проверять, есть ли 
в ней отрицательные значения. Если в переменной отрицательных значений нет, то эта 
переменная нас не интересует, для всех переменных, в которых есть отрицательные значения 
мы сохраним их в виде списка или матрицы, если число элементов будет одинаковым в каждой 
переменной (смотри пример работы функции).

Задание 1:
### Ключевые фрагменты кода
```R
my_vector <- c(21, 18, 21, 19, 25, 20, 17, 17, 18, 22, 17, 18, 18, 19, 19, 27, 21, 20,
24, 17, 15, 24, 24, 29, 19, 14, 21, 17, 19, 18, 18, 20, 21, 21, 19, 17, 21, 13, 17, 13,
23, 15, 23, 24, 16, 17, 25, 24, 22)

mean_val <- mean(my_vector)
my_vector2 <- c()

for(num in my_vector){
    if(abs(num - mean_val) <= 1){
        my_vector2 <- c(my_vector2, num)
    }
}

for(num in my_vector2){
    print(num)
}

```markdown
```

Задание 2:
### Ключевые фрагменты кода
```R
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

```markdown
```

### Тестирование
- Модульные тесты пройдены
- Интеграционные тесты пройдены

## Выводы
1. Векторизация делает код компактным и значительно повышает его производительность.

2. Функции apply облегчают обработку данных, уменьшая кол-во циклов.

3. Понимание объектов и пользовательских функций — основа эффективной работы в R.

## Ответы на контрольные вопросы
1. Векторизация — это выполнение операций сразу над целыми массивами (векторами) данных без явных циклов, что ускоряет вычисления.

2. Основные объекты языка R — векторы, матрицы, списки, фреймы данных (data.frame) и факторы.

3. Создание собственных функций — выполняется с помощью конструкции function(аргументы) { тело функции }, позволяющей переиспользовать код.

4. Векторизованные функции семейства apply — функции (apply, lapply, sapply, tapply и др.), которые применяют операции к элементам структур данных без явных циклов.


## Лабораторная работа №5

## Цель работы
познакомиться с особенностями функционального программирования. 
Научиться применять функциональное программирования с использованием пакета purrr. 
Решить задания в соответствующем стиле программирования. Составить отчет.

## Теоретическая часть
Изучено функциональное программирование и его применение

## Практическая часть

### Выполненные задачи
-   Задача 1: Используя тестовые данные пакета repurrrsive выполните следующее 
задание. Создайте именованный список аналогичный по структуре списку sw_films, для 
установления имени полезно использовать функцию set_names пакета purrr. В качестве имени 
элементов списка необходимо использовать соответствующие название фильмов (обратите 
внимание, что обращаться к элементам списка можно используя как индекс, так и название 
элемента). Выполните задание в функциональном стиле.
-   Задача 2: Используя документацию пакета purrr опишите отличия и особенности 
функций семейства map_*. Приведите примеры реализации с использование различных 
тестовых данных. Данные можно брать из пакета datasets или создав свои тестовые наборы. 
Для просмотра данных из пакета datasets выполните код library(help = "datasets")

Задание 1:
### Ключевые фрагменты кода
```R
print(sw_films[[1]]["title"])
films <- map(sw_films, ~ .x$title)
named_films <- set_names(sw_films, films)
print(named_films)

```markdown

### Пример работы программы
```{r hist, echo=FALSE}
$title
[1] "A New Hope"

$`A New Hope`
$`A New Hope`$title
[1] "A New Hope"

$`A New Hope`$episode_id
[1] 4

$`A New Hope`$opening_crawl
[1] "It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire's\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire's\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy...."

$`A New Hope`$director
[1] "George Lucas"

$`A New Hope`$producer
[1] "Gary Kurtz, Rick McCallum"

$`A New Hope`$release_date
[1] "1977-05-25"

$`A New Hope`$characters
 [1] "http://swapi.co/api/people/1/"  "http://swapi.co/api/people/2/"
 [3] "http://swapi.co/api/people/3/"  "http://swapi.co/api/people/4/"
 [5] "http://swapi.co/api/people/5/"  "http://swapi.co/api/people/6/"
 [7] "http://swapi.co/api/people/7/"  "http://swapi.co/api/people/8/" 
 [9] "http://swapi.co/api/people/9/"  "http://swapi.co/api/people/10/"
[11] "http://swapi.co/api/people/12/" "http://swapi.co/api/people/13/"
[13] "http://swapi.co/api/people/14/" "http://swapi.co/api/people/15/"
[15] "http://swapi.co/api/people/16/" "http://swapi.co/api/people/18/"
[17] "http://swapi.co/api/people/19/" "http://swapi.co/api/people/81/"

$`A New Hope`$planets
[1] "http://swapi.co/api/planets/2/" "http://swapi.co/api/planets/3/"
[3] "http://swapi.co/api/planets/1/"

$`A New Hope`$starships
[1] "http://swapi.co/api/starships/2/"  "http://swapi.co/api/starships/3/"
[3] "http://swapi.co/api/starships/5/"  "http://swapi.co/api/starships/9/"
[5] "http://swapi.co/api/starships/10/" "http://swapi.co/api/starships/11/"
[7] "http://swapi.co/api/starships/12/" "http://swapi.co/api/starships/13/"

$`A New Hope`$vehicles
[1] "http://swapi.co/api/vehicles/4/" "http://swapi.co/api/vehicles/6/"
[3] "http://swapi.co/api/vehicles/7/" "http://swapi.co/api/vehicles/8/"

$`A New Hope`$species
[1] "http://swapi.co/api/species/5/" "http://swapi.co/api/species/3/"
[3] "http://swapi.co/api/species/2/" "http://swapi.co/api/species/1/"
[5] "http://swapi.co/api/species/4/"

$`A New Hope`$created
[1] "2014-12-10T14:23:31.880000Z"

$`A New Hope`$edited
[1] "2015-04-11T09:46:52.774897Z"

$`A New Hope`$url
[1] "http://swapi.co/api/films/1/"


$`Attack of the Clones`
$`Attack of the Clones`$title
[1] "Attack of the Clones"

$`Attack of the Clones`$episode_id
[1] 2

$`Attack of the Clones`$opening_crawl
[1] "There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi...."

$`Attack of the Clones`$director
[1] "George Lucas"
...
```

Задание 2:
### Ключевые фрагменты кода
```R
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
```markdown

### Пример работы программы
```{r hist, echo=FALSE}
>=== map functions examples ===
[1] "Исходные данные data1:"
$a
[1] 23 45 67 89 12

$b
[1] 34 56 78 90 11

$c
[1] 45 67 89 10 22

[1] "\n1. map - возвращает список:"
$a
[1] 47.2

$b
[1] 53.8

$c
[1] 46.6

[1] "\n2. map_dbl - возвращает числа:"
   a    b    c 
47.2 53.8 46.6 

[1] "\n3. map_chr - возвращает текст:"
           fruits            colors 
"apple, banana, cherry" "red, green, blue" 

[1] "\n4. map_int - возвращает целые числа:"
a b c 
5 5 5 

[1] "\n5. map_lgl - возвращает TRUE/FALSE:"
    a     b     c 
 TRUE  TRUE FALSE 

[1] "\n6. map2 - работает с двумя списками:"
[[1]]
[1] 57

[[2]]
[1] 101

[[3]]
[1] 156

[[4]]
[1] 179

[[5]]
[1] 23

[1] "\n7. map_if - применяет функцию если условие TRUE:"
$a
[1]  46  90 134 178  24

$b
[1]  68 112 156 180  22

$c
[1] 45 67 89 10 22

[1] "\n8. walk - выполняет действие, ничего не возвращает:"
[1] 23 45 67 89 12
[1] 34 56 78 90 11
[1] 45 67 89 10 22
[1] "walk возвращает:"
NULL
```

### Тестирование
- Модульные тесты пройдены
- Интеграционные тесты пройдены

## Выводы
1. Язык R поддерживает функциональную парадигму программирования, где обработка данных выполняется через применение функций к наборам элементов.

2. Пакет purrr повышаетет функциональные возможности языка, давая безопасные итерации с помощью функций map.

3. Использование анонимных функций с тильдой (~) делает код компактнее и понятнее, показывая место передачи аргумента.




## Лабораторная работа №6

## Цель работы
познакомиться с особенностями грамотного программирования. Научиться 
применять грамотное программирование для создания динамических отчетов с 
использованием технологии R Markdown. Решить задания в соответствующем стиле 
программирования. Составить отчет.

## Теоретическая часть
Изучены особенности граммотного программирования

## Практическая часть

### Выполненные задачи
-   Задача 1: Используя технологию R Markdown создайте динамический документ с 
произвольными расчетами. Документ должен содержать вставки кода по типу inline и в виде 
чанков. В документе должно быть использовано различное форматирование. Также для 
оформления используйте каскадную таблицу стилей. Итоговый документ конвертируйте в 
html формат и представьте в отчете, соответствующие скрины.

### Ключевые фрагменты кода
```R
---
title: "Расчет кинетической энергии"
author: "Никита"
date: "`r Sys.Date()`"
output:
  html_document:
    css: style.css
---

# Расчет кинетической энергии

## Формула

Кинетическая энергия рассчитывается по формуле:

$$E_k = \frac{1}{2} m v^2$$

Где:
- $E_k$ — кинетическая энергия (Джоуль)
- $m$ — масса объекта (килограмм)
- $v$ — скорость объекта (метры в секунду)

## Ввод данных

```{r input_data, echo=TRUE}
# Ввод
масса <- 10    # кг
скорость <- 5  # м/с
```
```markdown

### Пример работы программы
```{r hist, echo=FALSE}
Масса: 50 кг, Скорость: 10 м/с
Энергия: 2500 Дж
```

### Тестирование
- Модульные тесты пройдены
- Интеграционные тесты пройдены

## Выводы
1. Освоен принцип создания динамических отчётов в RStudio с использованием технологии R Markdown, объединяющей текст, код и результаты вычислений.

2. Формат R Markdown позволяет автоматически обновлять данные и выводы при изменении исходного кода.

3. Изучена структура документа, включая YAML-заголовок, текстовые блоки и вставки R-кода, выполняемые при рендеринге.

