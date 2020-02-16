require_relative 'card'
require_relative 'dice'
require_relative 'hi_low'
require_relative 'wallet'
require_relative 'slots'
require_relative 'helpers'
require 'colorize'
@new_array = []
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
  
  # def generate_deck
  #   @suits.each do |suit|
  #     @ranks.each do |rank|
  #       @cards << Card.new(rank, suit) 
  #     end
  #   end 
  # end
  def generate_deck
    @suits.each do |suit|
      @ranks.each_with_index do |rank,i|
        @cards << Card.new(rank, suit, i+1) 
      end
    end 
  end

   def display_cards
     @cards.shuffle.each do |card|
       puts "#{card.rank} #{card.suit} #{card.i} (#{card.color})"
     end
   end
   def deal_user (number)
    shuffle_cards
    number.times {@cards.shift.output_user_card}
  end
  def deal_dealer (number)
    shuffle_cards
    number.times {@cards.shift.output_dealer_card}
  end
 end



