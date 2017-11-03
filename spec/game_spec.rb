require 'game'
require 'spec_helper'
require 'pry'

describe 'a player' do
  it 'has a name' do
    game = Game.new('Liam', 'Adrian')
    expect(game.player_one).to eq('Liam')
    expect(game.player_two).to eq('Adrian')


  end
  it 'has a score' do
    game = Game.new('Liam', 'Adrian')

    expect(game.current_score).to eq('Liam 0 - 0 Adrian')
  end
end

describe 'the score' do

  it 'can be increased' do
    game = Game.new('Liam', 'Adrian')
    game.win_condition 1
    expect(game.current_score).to eq('Liam 15 - 0 Adrian')
  end

  it 'shows a winner' do

    game = Game.new('Liam', 'Adrian')
    4.times do
    game.win_condition 1
    end
    expect(game.current_score).to eq('Liam Win - 0 Adrian')
  end

  it 'can go to advantage' do
    game = Game.new('Liam', 'Adrian')
    3.times do
    game.win_condition 1
    end
    4.times do
    game.win_condition 2
    end
    expect(game.current_score).to eq('Liam 40 - Adv Adrian')
  end

  it 'can lose advantage' do
    game = Game.new('Liam', 'Adrian')
    3.times do
    game.win_condition 1
    end
    4.times do
    game.win_condition 2
    end
    game.win_condition 1
    expect(game.current_score).to eq('Liam 40 - 40 Adrian')
  end

end
