def intro
  puts "Welcome to Casino" 
  puts "How much money do you have?"
  user_input = gets.chomp()
  puts "you have $#{user_input}"
end
puts intro
class Bankroll 
  attr_accessor :wallet
  def initialize (wallet)
    @wallet = wallet
  end

# def get_user_dinner(options)
#   puts "Type the # of order you would you like?"

#   options.each_with_index do | item, index | 
#     puts "#{index}: #{item[:name]} #{item[:price]}"
#   end

#   choice = gets.chomp.to_i

#   if (choice >= options.size)
#     puts "Not a valid menu item. Please choose again."
#     get_user_dinner(options)
#   end

#   return options[choice]
# end

# class Cart
#   attr_accessor :items, :main_dishes, :side_dishes
#   def initialize(items = [])
#     @items = items
#   end

#   def add_item(item)
#     @items.push(item)
#   end

#   def print()
#     @items.each do | item |
#       puts item[:name]
#     end
#   end

#   def total()
#     sum = 0

#     @items.each do | item |
#       sum = sum + item[:price] 
#     end
    
   
#     return sum
#   end
# end