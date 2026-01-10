# Задание 3. Создайте класс копилка. Описание структуры классы выполните из своего 
# понимания копилки.

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