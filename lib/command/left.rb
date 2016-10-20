module Command
  class Left < CommandBase

    def initialize(robot)
      @robot = robot
    end

    def execute!
      @robot.rotate_left! if @robot.placed?
    end

  end
end
