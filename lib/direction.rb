class Direction

  attr_accessor :f

  COMPASS = {
      'east' => {
          angle: 0,
          arrow: ' ▶ '
      },
      'north' => {
          angle: 90,
          arrow: ' ▲ '
      },
      'west' => {
          angle: 180,
          arrow: ' ◀ '
      },
      'south' => {
          angle: 270,
          arrow: ' ▼ '
      }
  }


  def initialize(f)
    @f = COMPASS[f][:angle]
  end

  def to_compass
    sin = calc_sin
    return 'north' if sin == 1
    return 'south' if sin == -1
    cos = calc_cos
    return 'east' if cos == 1
    return 'west' if cos == -1
  end

  def to_arrow
    COMPASS[to_compass][:arrow]
  end

  def calc_sin
    Math.sin(deg2rad).to_i
  end

  def calc_cos
    Math.cos(deg2rad).to_i
  end

  def change!(degree)
    @f += degree
  end

  def deg2rad
    @f * Math::PI / 180
  end

end
