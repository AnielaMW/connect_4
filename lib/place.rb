class Place

  attr_accessor :filled, :owner

  def initialize(filled = false)
    @filled = filled
    @owner = nil
  end

  def marker
    if @filled == true
      return @owner.marker
    else
      return '_'
    end
  end
end
