<<<<<<< HEAD
require_relative 'slots'
require_relative 'card'
require_relative 'dice'
require_relative 'hi_low'
require_relative 'wallet'
require_relative 'deck'
=======
require_relative "deck"
require_relative "card"
require_relative "dice"
>>>>>>> 078f77c99978b66fd67bc4b411902375f145d704

deck = Deck.new
deck.display_cards
dice=Dice.new
dice.roll
dice.show_dice