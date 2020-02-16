require_relative 'card'
require_relative 'dice'
require_relative 'hi_low'
require_relative 'wallet'
require_relative 'deck'
require_relative 'helpers'
require_relative 'slots'


def get_user_info
  puts "Welcome to Ruby Casino" 
  puts "what's your name"
  name = gets.chomp()
  puts "How much money do you have?"
  money = gets.chomp.to_i()
  puts "Greetings #{name}, you have $#{money}."
  @wallet_purse = Wallet.new(money)
  # user = User.new(name, @wallet)
  # return user 
  main_menu
end

def main_menu
  puts "We have lots of fun in store for you"
  puts "Press 1) to play a game of Hi Low"
  puts "Press 2) to play a game of Slots"
  puts "Press 3) to view your balance"
  puts "Press 4) to update your balance"
  puts "Press 0) if you'd like to leave"
  @choice = gets.to_i
  case 
  when @choice == 1
    @hi_low_game = HiLow.new
    @hi_low_game.intro
  when @choice == 2
    @slots_game = Slots.new
  when @choice == 3
    #appclass
  when @choice == 0
    exit
  else
    puts "That is an invalid choice, please choose a number from the menu".purp
  end 
end
<<<<<<< HEAD

<<<<<<< HEAD
puts get_user_info
=======
get_user_info
>>>>>>> c17a9d9d8079a4bf28aee8c94265c0ca0d24b8db
=======
>>>>>>> 0710be3079c3f4b6448644accc3279a15d113466
