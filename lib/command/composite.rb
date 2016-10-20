module Command
  class Composite < CommandBase

    def initialize
      @commands = []
    end

    def add_command(cmd)
      @commands << cmd
    end

    def execute!
      @commands.each(&:execute)
    end

  end
end

