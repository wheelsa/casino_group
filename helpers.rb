require './User.rb'
require './wallet.rb'

def get_user_info
  puts "Welcome to Ruby Casino" 
  puts "what's your name"
  name = gets.chomp()
  puts "How much money do you have?"
  money = gets.chomp.to_i()
  puts "Greetings #{name}, you have $#{money}."

  wallet = Wallet.new(money)
  user = User.new(name, wallet)
  return user 
end
