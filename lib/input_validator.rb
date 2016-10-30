class InputValidator
  class << self

    def validate_numericality_of(x, y, allow_nil: false)
      return if allow_nil && x.nil? && y.nil?
      raise ArgumentError, 'Nice try! x and y must be numbers!' if [x,y].any? {|c| !is_int? c }
    end

    def validate_inclusion_of(direction, in_the:, allow_nil: false)
      return if allow_nil && direction.nil?
      raise ArgumentError, ' Hehe... Now give me valid direction.' unless in_the.include? direction
    end

    def is_int?(object)
      object == object.to_i.to_s
    end

  end
end
