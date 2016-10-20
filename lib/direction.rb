class Direction

  attr_accessor :f

  COMPASS = {
      'EAST' => 0,
      'NORTH' => 90,
      'WEST' => 180,
      'SOUTH' => 270
  }


  def initialize(f)
    @f = COMPASS[f]
  end

  def to_compass
    sin = calcSin
    return 'NORTH' if sin == 1
    return 'SOUTH' if sin == -1
    cos = calcCos
    return 'EAST' if cos == 1
    return 'WEST' if cos == -1
  end

  def calcSin
    Math.sin(deg2rad).to_i
  end

  def calcCos
    Math.cos(deg2rad).to_i
  end

  def change!(degree)
    @f += degree
  end

  def deg2rad
    @f * Math::PI / 180
  end

end
