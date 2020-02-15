class Wallet
  attr_accessor :quantity 
  def initialize(quantity)
    @quantity = quantity
  end
  
  def remove(amount)
    if (amount > @quantity)
      puts "insufficient funds. Wallet has $#{@quantity}"
      return 0
    end
    @quanitity = @quantity - amount
    return amount
  end
  
  def add(amount)
    @quantity = @quantity + amount
    return amount
  end
end
