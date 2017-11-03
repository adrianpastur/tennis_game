require 'pry'
class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two

    @player_one_counter = 0
    @player_two_counter = 0
  end

  attr_accessor :player_one, :player_two, :player_one_counter, :player_two_counter

  SCORES = ['0', '15', '30', '40', 'Adv', 'Win']

  def current_score
    "#{player_one} #{SCORES[player_one_counter]} - #{SCORES[player_two_counter]} #{player_two}"
  end

  def win_condition(input)

    if input == 1 && @player_one_counter <= 4
      if @player_one_counter < 3
        @player_one_counter += 1
      elsif @player_one_counter == 3 && @player_two_counter < 3
        @player_one_counter +=2
      elsif @player_one_counter == 3 && @player_two_counter == 3
        @player_one_counter +=1
      elsif @player_one_counter == 4 && @player_two_counter == 3
        @player_one_counter +=1
      elsif @player_two_counter == 4 && @player_one_counter == 3
        @player_two_counter -= 1

      else
        puts "Wrong input"
      end
    elsif input == 2 && @player_two_counter <=4
      if @player_two_counter < 3
        @player_two_counter += 1
      elsif @player_two_counter == 3 && @player_one_counter <3
        @player_two_counter +=2
      elsif @player_two_counter == 3 && @player_one_counter == 3
        @player_two_counter +=1
      elsif @player_two_counter == 4 && @player_one_counter == 3
        @player_two_counter +=1
      elsif @player_one_counter == 4 && @player_two_counter == 3
        @player_one_counter -= 1
      else
        puts "Wrong input"
      end
    else
      puts "wrong input?"
    end
  end
end
