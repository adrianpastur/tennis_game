require 'game'
require 'spec_helper'
require 'pry'


describe 'a player' do
  it 'has a name' do
    game = Game.new
    game.set_player1("Adrian", 0)
    expect(game.get_player1).to eq("Adrian",0)
  end
  # it 'has a score' do
  #   game.set_player1 "adrian"
  #   expect(game.get_player1).to eq("Adrian", [0])
  # end
end

# describe 'the score' do
#   it 'starts with 0'
#   it 'can be increased'
# end
