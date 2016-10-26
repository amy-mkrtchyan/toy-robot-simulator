module Command
  class Report < CommandBase

    def initialize(robot, board)
      @robot, @board = robot, board
    end

    def execute!
      raise StandardError, 'Place Robot first.' unless @robot.placed?
      @board.draw(**@robot.report)
    end

  end
end
