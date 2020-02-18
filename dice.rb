require_relative 'card'
require_relative 'helpers'
require_relative 'hi_low'
require_relative 'wallet'
require_relative 'deck'
require_relative 'slots'

class Dice
  def initialize
    roll
  end
  
  def roll
    @die1 = 1 + rand(6)
    
    @die2 = 1 + rand(6) 
  end
  
  def show_dice
    print "Die1: ", @die1, " Die2:", @die2
  end

  # def win_lose_game
  #   puts "You didn't win anything - bummer! Would you like to place a bet to win your dollar back?"
  #   puts "Enter YES or NO"
  #   answer = gets.strip.downcase
  #   if answer == 'no'
  #     puts "Would you like to play Ruby Slots again?? Yes or no."
  #     response = gets.strip.downcase
  #       if response == "yes"
  #        pull_lever
  #       elsif response == "no"
  #        main_menu
  #      else
  #        slots_menu
  #       end
  #   elsif answer == 'yes'
  #     Dice.new
  #     puts "Guess what number, 1 through 6, the dealer dice will roll."
  #     dice_roll = gets.strip.to_i
  #       if @die1 = dice_roll
  #       puts "Stellar bet!! You won your dollar back!"
  #       @@wallet.add(1)
  #      else
  #        puts "Would you like to play Ruby Slots again?? Yes or no."
  #        response = gets.strip.downcase
  #           if response == "yes"
  #             pull_lever
  #           elsif response == "no"
  #               main_menu
  #            else
  #              slots_menu
  #            end
  #         end
  #     end
  #    end
  
  def show_sum
    print "Sum of dice is ", @die1 + @die2, ".\n"
  end 
 end
 
