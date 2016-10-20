module Command
  class Right < CommandBase

    def initialize(robot)
      @robot = robot
    end

    def execute!
      @robot.rotate_right! if @robot.placed?
    end

  end
end
