require 'colorize'
require_relative 'card'
require_relative 'dice'
require_relative 'hi_low'
require_relative 'Wallet'
require_relative 'deck'
require_relative 'helpers'
require_relative 'User' 
class HiLow
  attr_accessor :cards
  def initialize
    @cards = cards
  end
def intro

  puts "
      $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
             Welcome to a game of Hi Low
      $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".blue.bold
  puts "
  Rules:
        - First you will place your bet
        - Then you will receive a card
        - You will respond with high or low
        - The dealer will deal another card
        - If the card is higher or lower and you guessed right, you win
        - If the card is equal to your card, you break even
        - if your first card is an Ace or King, you will be redealt a card".blue
  puts "
  Lets play
  ".green.bold
  stage1
end

def stage1
  puts "Please make your bet:".green.bold
  @bet = gets.to_i
  #if @bet < wallet puts"You don't have enough money, please bet less or return to menu by pressing 0
#elsesubtract @bet from class for money purse
  "Thanks, we have your bet placed for #{@bet}.
  ".green
  puts "
  Here is your card:
  ".green
  deal_card
end 


def deal_card
  @cards_deal = Deck.new
  @cards_deal.deal_user(1)
  if $value_user == 1 || $value_user == 13
    puts "Sorry, looks like you were dealt an Ace or King, let me redeal you:
    ".red
    deal_card
  else
    wager_time
  end
end 



def wager_time
  puts "
  Would you like to bet High (PRESS 1) or Low (PRESS 2?".green.bold
  @wager = gets.to_i
  if (@wager == 1) || (@wager == 2)
    high_low_multiplier
  else 
    puts "Please enter a valid bet: ".red
    wager_time
  end 
end 

def high_low_multiplier
  puts "Let's see how lucky you are, here comes the dealer card:
  ".green
  @cards_deal = Deck.new
  @cards_deal.deal_dealer(1)
  case 
    when (@wager == 1)  && ($value_user > $value_dealer)
    puts "
    Congratulations, you won this hand!
    ".blue
      case 
      when $value_user == 2
      @bet = @bet * 1.1
      won_money
      when $value_user == 3
      @bet = @bet * 1.1
      won_money
      when $value_user == 4
      @bet = @bet * 1.1
      won_money
      when $value_user == 5
      @bet = @bet * 1.3
      won_money
      when $value_user == 6
      @bet = @bet * 1.5
      won_money
      when $value_user == 7
      @bet = @bet * 1.7
      won_money
      when $value_user == 8
      @bet = @bet * 2.1
      won_money
      when $value_user == 9
      @bet = @bet * 2.6
      won_money
      when $value_user == 10
      @bet = @bet * 3.5
      won_money
      when $value_user == 11
      @bet = @bet * 5.2
      won_money
      when $value_user == 12
      @bet = @bet * 10.7
      won_money
      else
      end

    when (@wager == 2) && ($value_user < $value_dealer)
    puts "
    Congratulations, you won this hand!
    ".blue
      case 
      when $value_user == 12
      @bet = @bet * 1.1
      won_money
      when $value_user == 11
      @bet = @bet * 1.1
      won_money
      when $value_user == 10
      @bet = @bet * 1.1
      won_money
      when $value_user == 9
      @bet = @bet * 1.3
      won_money
      when $value_user == 8
      @bet = @bet * 1.5
      won_money
      when $value_user == 7
      @bet = @bet * 1.7
      won_money
      when $value_user == 6
      @bet = @bet * 2.1
      won_money
      when $value_user == 5
      @bet = @bet * 2.6
      won_money
      when $value_user == 4
      @bet = @bet * 3.5
      won_money
      when $value_user == 3
      @bet = @bet * 5.2
      won_money
      when $value_user == 2
      @bet = @bet * 10.7
      won_money
      else
      end 

    when $value_user == $value_dealer
    @bet = @bet
    puts "
    This round was a push, you get to keep your $#{'%.2f' % @bet}.
    ".red

    else 
      puts "
      The house wins, sorry friend. You lost $#{'%.2f' % @bet} :(. 
      ".red
    
  end 
   #need class to add money to wallet
   #need class to state how much current balance is'
  hi_game_menu
end 
def hi_game_menu
  puts "Press 1) if you'd like to play again"
  puts "Press 2) if you'd like to view your balance"
  puts "Press 3) if you'd like to return to the main menu"
  puts "Press 0) if you'd like to leave"
  @choice = gets.to_i
  case 
  when @choice == 1
    intro
  when @choice == 2
    @wallet.current_balance
    hi_game_menu
  when @choice == 3
    main_menu
  when @choice == 0
    exit
  else
    puts "That is an invalid choice, please choose a number from the menu".purp
  end 
end

def won_money
  puts "In fact, you won $#{'%.2f' % @bet}!
  ".blue.bold
end
end 


