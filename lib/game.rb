require 'pry'
class Game
  puts "In Game Class"
  def set_player1(name)
    @player1 = name

  end

  def get_player1
    @player1
  end

  def set_player2(name)
    @player2 = name
  end

  def get_player2
    @player2
  end

  def set_score1(score)
    @score1 = []
    @score1 << score
  end

  def get_score1
    @score1
  end

  def score_update(id)
    @id = id
    if id == 1 then @score1 << 1
    else puts "wrong id"
    end
  end
end
