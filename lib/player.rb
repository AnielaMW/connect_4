class Player

  attr_accessor :name, :marker

  def initialize(name, marker = nil)
    @name = name
    @marker = nil
  end
end
