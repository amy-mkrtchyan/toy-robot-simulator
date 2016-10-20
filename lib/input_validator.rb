class InputValidator
  class << self
    def validate_numericality_of(*coordinates)
      raise ArgumentError, 'Nice try! x and y must be numbers!' if coordinates.any? {|c| c.is_numeric? == false }
    end

    def validate_format_of(direction)
      raise ArgumentError, ' Hehe... Now give me valid direction.' unless Direction::COMPASS.keys.include? direction
    end

  end

  String.class_eval do
    def is_numeric?
      Integer(self) rescue false
    end
  end

end
