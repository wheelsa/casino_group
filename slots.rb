# require_relative 'card'
# require_relative 'deck'
# require_relative 'dice'
# require_relative 'hi_low'
# require_relative 'wallet'

class Slots
  attr_accessor :wallet

  def initialize 
    welcome_player
  end


# Welcome the player!
def welcome_player
  puts "~~~ Welcome to Ruby Slots! ~~~"
  #puts #method that gives player their balance
  slots_menu
end

# Instruct them to pull the lever to start the slot machine or exit
def slots_menu
  puts "To start the machine and try your luck, enter PULL to pull the lever. Enter EXIT to go back to the main menu."
  input = gets.strip.downcase
  if input == "pull"
    pull_lever
  elsif input == "exit"
    #function that brings them back to the main menu
  else
    slots_menu
  end
end


# Give them three random returns - one in 0 1 and 2
# If 0 and 2 are the same they get $1
# If 1 and 2 or 0 and 1 are they same they get $10
# If all three are the same they get $100
#   This should prompt a JACKPOT! message
  def pull_lever
    slot_return = Array.new

    3.times do
      slot_return << @slot_entries.sample
    end

    puts slot_return.join(' ')
    end

    if slot_return[0] == slot_return[2]
      #some code
    elsif slot_return[0] == slot_return[1]
      #some code
    elsif slot_return[1] == slot_return[2]
      #some code
    elsif slot_return[0] == slot_return[1] == slot_return[2]
      #jackpot code
    else
      #go to a code that asks if they want to play again
  end

#Give them their wallet's new balance


# Ask if they would like to place a bet.
# If yes, what number will the dice roll next?
#   Correct = +$5 Incorrect = -$5


# Tell them to pull the lever to play again



 @slot_entries = ["@","#","$","%","^","&","*","=","+","?","!","/","~"] #13 entries

puts @slot_entries

#Slots.new