class Slots
  attr_accessor :wallet

  def initialize 
    #@wallet = Slots.new(money)
    welcome_player
  end


# Welcome the player!
def welcome_player
  puts "~~~ Welcome to Ruby Slots! ~~~"
  #puts #method that gives player their balance
  main_menu
end

# Instruct them to pull the lever to start the slot machine or exit
def main_menu
  puts "To start the machine and try your luck, enter PULL to pull the lever. Enter EXIT to go back to the main menu."

end


# Give them three random returns - one in 0 1 and 2
# If 0 and 2 are the same they get $1
# If 1 and 2 or 0 and 1 are they same they get $10
# If all three are the same they get $100
#   This should prompt a JACKPOT! message


# Give them their wallet's new balance


# Ask if they would like to place a bet.
# If yes, what number will the dice roll next?
#   Correct = +$5 Incorrect = -$5


# Tell them to pull the lever to play again




end

Slots.new