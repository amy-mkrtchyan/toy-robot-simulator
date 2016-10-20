module Command
  class Place < CommandBase

    def initialize(robot, on:, at:)
      @robot = robot
      @board = on
      @x,@y,@f = at
    end

    def execute!
      @robot.set_position!(@x,@y,@f) if @board.covers?(@x,@y)
    end

  end
end
