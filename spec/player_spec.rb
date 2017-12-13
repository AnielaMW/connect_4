require 'spec_helper'
require_relative '../lib/player'

describe Player do

  # As a player
  # I want to enter my name
  # So that I can be identified throughout the game
  # Acceptance Criteria:
  #
  # Each player can enter their name
  # The game cannot proceed until they each specify a name
  # Each name must be unique

  let(:p1) { Player.new }
  let(:p2) { Player.new }

  it 'should be an instance of Player' do

    expect(p1).to be_an_instance_of(Player)
    expect(p2).to be_an_instance_of(Player)
  end

  it 'should ask a players name and be able to return name' do
    p1_name = 'Emma'
    p2_name = 'Lizzie'

    p1.name = p1_name
    expect(p1.name).to eq('Emma')

    p2.name = p2_name
    expect(p2.name).to eq('Lizzie')
  end

  # it 'should not allow continuation until two player names are entered' do
  #   p1_name = 'Emma'
  #   p1.name = p1_name
  #
  #   # expect to get error if no player_2 name is entered
  # end
  #
  # it 'should not allow two player names to be identical' do
  #   p1_name = 'Emma'
  #   p1.name = p1_name
  #   p2.name = p2_name
  #
  #   # expect to get error if player_2 name is identical to player_1
  # end
end
