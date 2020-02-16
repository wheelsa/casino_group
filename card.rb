
class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color, :i
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'K', 'Black')
  def initialize(rank, suit, i)
    @rank = rank
    @suit = suit
    @color = suit == "Spades" || suit == "Clubs" ? 'Black' : 'Red'
    @i = i
  end
  def output_user_card
    puts "The #{@rank} of #{@suit}"
    $value_user = @i
  end
  def output_dealer_card
    puts "The #{@rank} of #{@suit}"
    $value_dealer = @i
  end
 end


