module Command
  class Left < CommandBase

    def initialize(robot)
      @robot = robot
    end

    def execute!
      raise StandardError, 'Place Robot first.' unless @robot.placed?
      @robot.rotate_left!
    end

  end
end
