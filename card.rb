class Card
  # Getter and Setter methods for rank, suit and color
  attr_accessor :rank, :suit, :color
  # Gets called when you call the new method to create an instance
  # card = Card.new('10', 'K', 'Black')
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @color = suit == "Spades" || suit == "Clubs" ? 'Black' : 'Red'
  end
  def output_card
    puts "The #{@rank} of #{@suit}"
  end
 end
# card_new = Card.new('10',"King")
# p card_new