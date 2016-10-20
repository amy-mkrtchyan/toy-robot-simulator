module Command
  class Place < CommandBase

    def initialize(robot, on:, at:)
      @robot = robot
      @board = on
      @x,@y,@f = at
    end

    def execute!
      raise 'Place Robot inside table!' unless @board.covers?(@x,@y)
      @robot.set_position!(@x,@y,@f)
    end

  end
end
