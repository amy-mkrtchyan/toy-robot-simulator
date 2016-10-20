class Robot

  attr_accessor :x, :y, :f

  def set_position!(x,y,f)
    self.x, self.y, self.f = x,y, Direction.new(f)
  end

  def placed?
    !(self.x.nil? or self.y.nil? or self.f.nil?)
  end

  def rotate_left!
    self.f.change!(90)
  end

  def rotate_right!
    self.f.change!(-90)
  end

  def move!
    self.x, self.y = next_step
  end

  def report
    {x: self.x, y: self.y, f: self.f.to_compass}
  end

  def next_step
    return self.x + self.f.calcCos, self.y + self.f.calcSin
  end

end
