# Задание 1. Создайте дженерик, принимающий вектор, содержащий параметры фигуры и вычисляющий ее площадь. Для разных фигур
# создайте разные классы. В качестве метода по умолчанию дженерик должен выводить сообщение о
# невозможности обработки данных. 

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