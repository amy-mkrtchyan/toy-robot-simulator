class Robot

  attr_accessor :x, :y, :f

  def set_position!(x,y,f)
    @x, @y, @f = x.to_i, y.to_i, Direction.new(f)
    self
  end

  def placed?
    !(@x.nil? or @y.nil? or @f.nil?)
  end

  def rotate_left!
    @f.change!(90)
    self
  end

  def rotate_right!
    @f.change!(-90)
    self
  end

  def move!
    @x, @y = next_step
    self
  end

  def report
    {x: @x, y: @y, f: @f.to_compass, arrow: @f.to_arrow}
  end

  def next_step
    return @x + @f.calc_cos, @y + @f.calc_sin
  end

end
