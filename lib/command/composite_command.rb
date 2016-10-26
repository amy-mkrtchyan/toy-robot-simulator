module Command
  class CompositeCommand < CommandBase

    attr_accessor :command_set

    def initialize
      @command_set = []
    end

    def add_command(cmd)
      @command_set << cmd
    end

    def execute!
      @command_set.each(&:execute!)
    end

  end
end
