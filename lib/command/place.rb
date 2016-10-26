module Command
  class Place < CommandBase

    def initialize(robot, board, at:)
      @robot = robot
      @board = board
      @x,@y,@f = at
    end

    def execute!
      validate_coordinates!
      @robot.set_position!(@x,@y,@f)
    end


    private

    def validate_coordinates!
      InputValidator.validate_numericality_of @x, @y, allow_nil: false
      InputValidator.validate_inclusion_of @f, in_the: Direction::COMPASS.keys, allow_nil: false
      raise ArgumentError, 'Place Robot inside table!' unless @board.covers?(@x,@y)
    end

  end
end
