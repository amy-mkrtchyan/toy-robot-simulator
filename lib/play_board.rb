require 'terminal-table/import'

class PlayBoard

  attr_accessor :size_x, :size_y

  def initialize(size_x = 5, size_y = 5)
    @size_x, @size_y = size_x, size_y
  end

  def covers?(x,y)
    x.to_i.between?(0, @size_x) && y.to_i.between?(0, @size_y)
  end

  def draw(x:,y:,f:, arrow:)
    rows = Array.new(@size_y) { Array.new(@size_x, '   ')}

    pos_y = @size_y - y - 1
    rows[pos_y][x] = arrow

    table = Terminal::Table.new do |t|
      t.rows = rows
      t.style = {all_separators: true}
    end

    puts "x: #{x}", "y: #{y}", "f: #{f}",  table
  end

end
