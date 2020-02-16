require_relative 'card'
require_relative 'dice'
require_relative 'hi_low'
require_relative 'deck'
require_relative 'helpers'
require_relative 'slots'


class Wallet
  attr_accessor :quantity 
  def initialize(quantity)
    @quantity = quantity
  end
  def remove(amount)
    @quantity = @quantity - amount
    return amount
  end
  
  def add(amount)
    @quantity = @quantity + amount
    return amount
  end
  def current_balance
    puts "Your balance is #{@quantity}!"
  end 
end

