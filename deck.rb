require_relative 'card'
class Deck
  # Getter and Setter methods for rank, suit and color
  attr_accessor :cards
 
  # Gets called when you call the new method to create an instance
  # deck = Deck.new
  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end
 
  def shuffle_cards
   @cards.shuffle!
  end
  
  def generate_deck
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << Card.new(rank, suit) 
      end
    end
  end
   def display_cards
     @cards.shuffle.each do |card|
       puts "#{card.rank} #{card.suit} (#{card.color})"
     end
   end
   def deal (number)
    shuffle_cards
    number.times {@cards.shift.output_card}
  end
 end




@cards_deal = Deck.new
@cards_deal.deal(1)
#  card_deal = Deck.new
#  cards = card_deal.generate_deck
#  cards[][:cards]


# def all_card
#   # @cards.each do |card|
#   #   @card_array = [card.rank, card.suit, card.color]
#   #   @card_array << @cards
#   # end
#   puts "#{@cards}"
# end
# def sample_card

# end 

