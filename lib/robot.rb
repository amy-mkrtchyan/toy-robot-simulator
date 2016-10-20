class Robot

  attr_accessor :x, :y, :f

  def set_position!(x,y,f)
    @x, @y, @f = x,y, Direction.new(f)
  end

  def placed?
    !(@x.nil? or @y.nil? or @f.nil?)
  end

  def rotate_left!
    @f.change!(90)
  end

  def rotate_right!
    @f.change!(-90)
  end

  def move!
    @x, @y = next_step
  end

  def report
    {x: @x, y: @y, f: @f.to_compass}
  end

  def next_step
    return @x + @f.calcCos, @y + @f.calcSin
  end

end
