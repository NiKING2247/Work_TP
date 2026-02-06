# Задание 2. Создайте генератор класса Микроволновая печь. В качестве данных класс 
# должен содержать сведения о мощности печи (Вт) и о состоянии дверцы (открыта или 
# закрыта). Данный класс должен обладать методами открыть и закрыть дверь микроволновки, 
# а также методом, отвечающим за приготовление пищи. Метод, отвечающий за приготовление 
# пищи, должен вводить систему в бездействие (используется Sys.sleep) на определенное 
# количество времени (которое зависит от мощности печи) и после выводить сообщение о 
# готовности пищи. 
# Выполните создание двух объектов этого класса со значением по умолчанию и с 
# передаваемыми значениями. Продемонстрируйте работу этих объектов по приготовлению пищи. 

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