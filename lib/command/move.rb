module Command
  class Move < CommandBase

    def initialize(robot, board)
      @robot, @board = robot, board
    end

    def execute!
      raise StandardError, 'Place Robot first.' unless @robot.placed?
      raise StandardError, 'End of the road, time to turn around!' unless @board.covers?(*@robot.next_step)
      @robot.move!
    end

  end
end
