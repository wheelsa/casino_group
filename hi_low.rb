class HiLow
  def initialize
    @cards = cards
  end
end

def intro

  puts "Welcome to a game of Hi Low"
  puts "
  Rules:
        - First you will place your bet
        - Then you will receive a card
        - You will respond with high or low
        - The dealer will deal another card
        - If the card is higher or lower and you guessed right, you win
        - If the card is equal to your card, you break even
        - if your first card is an Ace or King, you will be redealt a card"
  puts "Lets play"

end
def game
def stage1
  puts "Please make your bet:
  "
  @bet = gets.to_i
  puts "Here is your card:"
  @cards_deal.deal_user(1)
  wager
end 




intro

def wager
  puts "Would you like to bet High or Low?"
  @wager = gets.chomp.upcase 
  if @wager =! "HIGH" || "LOW" || "H" ||"L"
    "Please enter a valid wager please
    "
    wager
  else 
    high_low_multiplier
  end 
end 

def high_low_multiplier
  puts "Let's see how lucky you are, here comes the dealer card:
  "
  @cards_deal.deal_dealer(1)
  if $value_user > 

end 