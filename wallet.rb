require_relative 'card'
require_relative 'dice'
require_relative 'hi_low'
require_relative 'deck'
require_relative 'helpers'

class Wallet
  attr_accessor :bankroll 
  def initialize(bankroll)
    @bankroll = bankroll
  end
  def bankroll
    @bankroll
  end

  def remove(amount)
    if (amount > @bankroll)
      puts "insufficient funds. Wallet has $#{@bankroll}"
      return 0
    end
    @bankroll = @bankroll - amount
    return amount
  end

  def add(amount)
    @bankroll = @bankroll + amount
    return amount
  end
  def current_balance
    puts "Your balance is #{@bankroll}!"
  end 
end
