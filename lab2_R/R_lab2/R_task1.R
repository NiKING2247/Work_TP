# Задание 1 – Написать программу, выполненную в структурном стиле. Программа должна рассчитывать площадь 
# фигур (программа должна корректно отрабатывать данные согласно варианту в приложении А). На вход программа
# запрашивает строку, если в нее введено название фигуры, то программа запрашивает необходимые параметры фигуры, если
# введено значение отличное от названия фигуры, то программа повторно предлагает ввести название фигуры, если пользователь
# не справляется с этой задачей более 3 раз подряд, то программа сообщает о некорректности действий пользователя
# и завершается. В случае введения корректных данных программа должна выдать ответ, а также описание хода решения.
# Программа должна быть выполнена в виде блок-схемы и на ЯВУ.  ВАРИАНТ 56

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