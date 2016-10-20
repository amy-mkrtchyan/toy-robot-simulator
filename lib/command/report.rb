module Command
  class Report < CommandBase

    def initialize(robot)
      @robot = robot
    end

    def execute!
      @robot.report if @robot.placed?
    end

  end
end
