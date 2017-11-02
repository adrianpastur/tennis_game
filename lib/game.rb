require 'pry'
class Game
  puts "In Game Class"
  def set_player1(name, score = 0)
    @player1 = name
    # @score1 = []
    # @score1 << score
  end

  def get_player1
    @player1
    @score1
  end

  def set_player2(name, score = 0)
    @player2 = name
    # @score2 = Array.new[4](score)
    # @score2 << score
  end

  def get_player2
    @player2
    @score2
  end

  #
  # def score_update(id, score = 1)
  #   @id = id
  #   @score = score
  #
  #   if id == 1 then player1 = name, score
  #   elsif id == 2 then player2 = name, score
  #   else puts "wrong id"
  #   end
  # end
end
