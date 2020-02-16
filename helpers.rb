require_relative 'card'
require_relative 'dice'
require_relative 'hi_low'
require_relative 'Wallet'
require_relative 'deck'
require_relative 'helpers'
require_relative 'User'

def get_user_info
  puts "Welcome to Ruby Casino" 
  puts "what's your name"
  name = gets.chomp()
  puts "How much money do you have?"
  @money = gets.chomp.to_i()
  puts "Greetings #{@name}, you have $#{$money}."
  wallet = Wallet.new(@money)
  user = User.new(@name, @wallet)
  # return user 
  main_menu
end

  @wallet = Wallet.new(money)
  @user = User.new(name, @wallet)
  return user 
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
    #show balance
    hi_game_menu
  when @choice == 3
    #appclass
  when @choice == 0
    exit
  else
    puts "That is an invalid choice, please choose a number from the menu".purp
  end 
end

get_user_info
