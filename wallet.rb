class Wallet
  attr_accessor :quantity 
  def initialize(quantity)
    @quantity = quantity
  end
  
  def remove(amount)
    if (amount > @quantity)
      puts "insufficient funds. Wallet has $#{@quantity}"
      return 0
      @quanitity = @quantity - amount
  end
  
  def add(amount)
    @quantity = @quantity + amount
    return amount
  end
end

wallet.new()


def intro
  puts "Welcome to Ruby Casino" 
  puts "what's your name"
  name = gets.chomp()
  puts "How much money do you have?"
  money = gets.chomp.to_i()
  puts "Greetings #{name}, you have $#{quantity}."

  wallet = Wallet.new(quantity)
  user = User.new(name, wallet)
  return user 
end

game_user = intro()

puts intro

def menu
  puts "---Main Menu---"
  puts "1) Slots"
  puts "2) High/Low"
end
puts menu







  


