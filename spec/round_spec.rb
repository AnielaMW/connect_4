require 'spec_helper'
require_relative '../lib/round'

describe Round do

  let(:round) { Round.new }

  it 'should be an instance of Round' do
    expect(round).to be_an_instance_of(Round)
  end

  it 'should have two players' do
    expect(round.player1).to be_an_instance_of(Player)
    expect(round.player2).to be_an_instance_of(Player)
  end

  it 'should have a winner and a loser' do
    expect(round.winner).to be_an_instance_of(Player)
    expect(round.loser).to be_an_instance_of(Player)
  end
end
