module Command
  class Right < CommandBase

    def initialize(robot)
      @robot = robot
    end

    def execute!
      raise StandardError, 'Place Robot first.' unless @robot.placed?
      @robot.rotate_right!
    end

  end
end
