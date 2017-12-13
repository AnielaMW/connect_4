require 'spec_helper'
require_relative '../lib/board'

describe Board do

  let(:board) { Board.new }

  it 'should be an instance of Board' do
    expect(board).to be_an_instance_of(Board)
  end

  # As a player
  # I want to drop a piece in a column
  # So that I can attempt to win the game
  # Acceptance Criteria:
  #
  # The player must specify a valid column. If they provide something invalid, inform them they must select a valid column and do not drop a game piece.
  # When the player specifies a valid column, place their respective game piece in the first available row in that column.
  # When the player specifies a valid column, it becomes the next players turn.

  it 'should be an instance of Board' do
    expect(board).to be_an_instance_of(Board)
  end

  # As a player
  # I want to know I cannot drop a piece in a full column
  # So that I can make an effective move
  # Acceptance Criteria:
  #
  # When a player selects a column that is full of game pieces (there is no available row), they are told that the column is full and they are prompted to select another column.

  it 'should be an instance of Board' do
    expect(board).to be_an_instance_of(Board)
  end

  # As a player
  # I want to know I've won the game
  # So that I can feel accomplished in my victory
  # Acceptance Criteria:
  #
  # Upon their turn, if a player drops a piece that makes a vertical or horizontal line of 4 of their pieces consecutively, they have won and the game is over.
  # Inform the player of their victory, and ask if they want to play again.
  # If they want to play again, keep the same players but clear the game board.

  it 'should be an instance of Board' do
    expect(board).to be_an_instance_of(Board)
  end

  # As a player
  # I want to know the game is over when the board is full
  # So we know the game has ended in a draw
  # Acceptance Criteria:
  #
  # When the board is full, meaning all rows and columns are occupied, the game is at a stalemate, resulting in a draw.
  # Inform the users that the game is a draw, and ask if they want to play again.
  # If they want to play again, keep the same players but clear the game board.

  it 'should be an instance of Board' do
    expect(board).to be_an_instance_of(Board)
  end
end
