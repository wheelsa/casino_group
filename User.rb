class User
  attr_accessor :name, :wallet
  def initialize (name, wallet)
    @name = name
    @wallet = wallet
  end
end

class User 
  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end
​
  def can_place_bet(amount) 
    # returns a boolean
    return money_in_wallet > amount
  end
​
  def lost_bet(amount)
    #logic to remove amount from wallet
  end
​
  def won_bet(amount)
    #logic to increase amount in wallet
  end
​
  def money_in_wallet
    return @wallet.quantity
  end
end

#method to add and remove money 
# how much money
# can place bet 
# loss bet
# win bet