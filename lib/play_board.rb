class PlayBoard

  attr_accessor :size_x, :size_y

  def initialize(size_x = 5, size_y = 5)
    @size_x, @size_y = size_x, size_y
  end

  def covers?(x,y)
    x.between?(0, @size_x) && y.between?(0, @size_y)
  end

end
