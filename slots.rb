# require_relative 'dice'
# require_relative 'hi_low'
# require_relative 'wallet'
# require_relative 'helpers'
# require_relative 'deck'
# require_relative 'app'



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
      puts "Womp Womp. You  didn't win."
      #win_lose_game if this can work then take out the rest of this "else" and just run the method
      puts "Would you like to play again?? Yes or no."
      response = gets.strip.downcase
      if response == "yes"
        pull_lever
      elsif response == "no"
        main_menu
      else
        slots_menu
      end

      @slot_return.clear
  end
end

end

