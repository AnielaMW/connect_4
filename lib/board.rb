class Board

  attr_accessor :columns, :rows

  def initialize()
    @columns = []
    new_columns
  end

  def rows
    @columns.transpose
  end

  def grid
    print "\n" +
    "#{new_row(column_text)}" +
    "#{game_rows}"
  end

  def drop_piece(column, player)
    @columns[column - 1].reverse.each do |place|
      unless place.filled
        place.filled = true
        place.owner = player
        break
      end
    end
  end

  private
  def new_columns
    7.times{ @columns.push(column_new) }
  end

  def column_new
    c_arr = []
    5.times{ c_arr.push(Place.new) }
    c_arr
  end

  def new_row(text, r = nil)
    '| ' + "#{text}" + '|' + "\n"
  end

  def column_text
    str = ''
    (1..7).map{|n| str += n.to_s + ' '}
    str
  end

  def game_rows
    str = ''
    rows.each do |r|
      str += new_row(row_text(r))
    end
    str
  end

  def row_text(row)
    str = ''
    row.map{|n| str += n.marker + ' '}
    str
  end
end
