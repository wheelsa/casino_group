require_relative 'dice'
require_relative 'hi_low'
require_relative 'wallet'
require_relative 'helpers'
require_relative 'deck'
require_relative 'app'




class Slots

  def initialize
    welcome_player
  end

  def welcome_player
    puts "~~~ Welcome to Ruby Slots ~~~"
    slots_menu
  end

  def slots_menu
    puts "To start the machine and try your luck, enter PULL to pay $1 and pull the lever. Enter EXIT to go back to the main menu."
    input = gets.strip.downcase
    if input == "pull"
      pull_lever
    elsif input == "exit"
      main_menu 
    else
      slots_menu
    end
  end


  def pull_lever
    @@wallet.remove(1)
    @slot_entries = ["@","#","$","%","^","&","*","=","+","?","!","/","~"]
    @slot_return = Array.new
    3.times do
      @slot_return << @slot_entries.sample
    end
    puts @slot_return.join(' ')

    if @slot_return[0] == @slot_return[2]
      puts "Congratulations!! You won $5!!"
      @@wallet.add(5)
      slots_menu
    elsif @slot_return[0] == @slot_return[1]
      puts "Amazing!! You won $10!!"
      @@wallet.add(10)
      slots_menu
    elsif @slot_return[1] == @slot_return[2]
      puts "Amazing!! You won $10!!"
      @@wallet.add(10)
      slots_menu
    elsif @slot_return[0] == @slot_return[1] && @slot_return[1]== @slot_return[2]
      puts "~~~JACKPOT~~~JACKPOT~~~JACKPOT~~~JACKPOT~~~JACKPOT~~~JACKPOT~~~~"
      puts "~~ $100 ~~ $100 ~~ $100 ~~ $100 ~~ $100 ~~ $100 ~~ $100 ~~"
      @@wallet.add(100)
    else
      #puts "Womp Womp. You  didn't win."
      win_lose_game #if this can work then take out the rest of this "else" and just run the method
      # puts "Would you like to play again?? Yes or no."
      # response = gets.strip.downcase
      # if response == "yes"
      #   pull_lever
      # elsif response == "no"
      #   main_menu
      # else
      #   slots_menu
      end

      @slot_return.clear
  end
end

def win_lose_game
  puts "You didn't win anything - bummer! Would you like to place a bet to win your dollar back?"
  puts "Enter YES or NO"
  answer = gets.strip.downcase
  if answer == 'no'
    puts "Would you like to play Ruby Slots again?? Yes or no."
    response = gets.strip.downcase
      if response == "yes"
       pull_lever
      elsif response == "no"
       main_menu
     else
       slots_menu
      end
  elsif answer == 'yes'
    Dice.new
    puts "Guess what number, 1 through 6, the dealer dice will roll."
    dice_roll = gets.strip.to_i
      if @die1 = dice_roll
      puts "Stellar bet!! You won your dollar back!"
      @@wallet.add(1)
      puts "Would you like to play Ruby Slots again?? Yes or no."
       response = gets.strip.downcase
          if response == "yes"
            pull_lever
          elsif response == "no"
              main_menu
           else
             slots_menu
           end
     else
       puts "Would you like to play Ruby Slots again?? Yes or no."
       response = gets.strip.downcase
          if response == "yes"
            pull_lever
          elsif response == "no"
              main_menu
           else
             slots_menu
           end
        end
    end
   end

@play_slots = Slots.new
