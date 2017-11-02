require 'game'
require 'spec_helper'
require 'pry'


describe 'a player' do
  it 'has a name' do
    game = Game.new
    game.set_player1 "Adrian"
    expect(game.get_player1).to eq("Adrian")

  end
  it 'has a score' do
    game = Game.new
    game.set_score1 0
    expect(game.get_score1).to eq([0])
  end
end

describe 'the score' do
  # it 'starts with 0'
  it 'can be increased' do
    game = Game.new
    game.set_score1 0
    expect(game.score_update 1).to eq([0,1])
  end
end
