module Command
  class Move < CommandBase

    def initialize(robot, board)
      @robot, @board = robot, board
    end

    def execute!
      @robot.move! if @robot.placed? && @board.covers?(@robot.next_step)
    end

  end
end
