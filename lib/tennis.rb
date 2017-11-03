require_relative 'game'

puts "Player 1 name: "
@player1 = gets.chomp

puts "Player 2 name: "
@player2 = gets.chomp

game = Game.new(@player1, @player2)
puts "Game has started!"
puts game.current_score

loop do
  puts "Game point, who won? (use 1 for player 1 and 2 for player 2)"
  input = gets
  w = game.win_condition input.to_i
  puts game.current_score
  break if w == 5
end
