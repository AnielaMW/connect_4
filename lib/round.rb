require 'pry'

class Round

  attr_accessor :winner, :loser, :board, :player1, :player2, :turn

  def initialize()
    @winner = nil
    @loser = nil
    @board = Board.new
    @player1 = Player.new('X')
    @player2 = Player.new('O')
    @turn = nil
  end

  def whose_turn
    if @turn == player1
      @turn = player2
    else
      @turn = player1
    end
    @turn.name
  end

  def select_place
    print "Choose a column? "
    @board.drop_piece(gets.to_i, @turn)
  end

  def outcome
    if condition
      @winner = player1
      @loser = player2
    elsif condition
      @winner = player1
      @loser = player2
    else
      @winner = "Stalemate"
      @loser = "Stalemate"
    end
  end
end
