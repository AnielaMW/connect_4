class Player

  attr_accessor :name, :marker

  def initialize(marker = nil)
    @name = nil
    @marker = marker
  end

  def ask_name
    print "What is this Player's name? "
    @name = gets.chomp.capitalize
    puts "You will be #{@marker}'s."
  end
end
