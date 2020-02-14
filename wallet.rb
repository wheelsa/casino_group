def intro
  puts "Welcome to Casino" 
  puts "How much money do you have?"
  user_input = gets.chomp()
  puts "you have $#{user_input}"
end
puts intro

# class Bankroll 
#   attr_accessor :wallet
#   def initialize (wallet)
#     @wallet = wallet
#   end

def add_item(item)
  @items.push(item)
end

def print()
  @items.each do | item |
    puts item[:name]
  end
end

def total()
  sum = 0

  @items.each do | item |
    sum = sum + item[:price] 
  end
  
 
  return sum
end


end