require_relative 'lib/board'
require_relative 'lib/place'
require_relative 'lib/player'
require_relative 'lib/round'


# Create the round to open the game.
nr = Round.new()

# Create the players and get their names
puts 'Welcome to Connect 4'
nr.player1.ask_name
puts ""
nr.player2.ask_name

#create the loop of game play
15.times{

  puts "\n#{nr.whose_turn}'s turn"

  #Create grid
  nr.board.grid

  #have the player pick a column
  nr.select_place

  # check for winnin pattern

}
