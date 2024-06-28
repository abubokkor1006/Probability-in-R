# Function to simulate flipping a coin
flip_coin <- function() {
  outcomes <- c("Heads", "Tails")
  result <- sample(outcomes, 1)
  return(result)
}

# Function to simulate rolling a die
roll_die <- function() {
  result <- sample(1:6, 1)
  return(result)
}
flip_coin
roll_die
result

# Function to simulate drawing a card from a deck
draw_card <- function() {
  suits <- c("Hearts", "Diamonds", "Clubs", "Spades")
  values <- c("2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace")
  deck <- expand.grid(Value = values, Suit = suits)
  result <- deck[sample(1:nrow(deck), 1), ]
  return(result)
}

# Simulate flipping a coin
coin_result <- flip_coin()
print(paste("Coin flip result:", coin_result))

# Simulate rolling a die
die_result <- roll_die()
print(paste("Die roll result:", die_result))

# Simulate drawing a card
card_result <- draw_card()
print(paste("Card draw result:", paste(card_result$Value, "of", card_result$Suit)))

