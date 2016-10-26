class GameService

  def initialize
    @robot = Robot.new
    @board = PlayBoard.new
    @parser = CmdParser.new
  end


  def handle_command(input)
    action, x, y, f = @parser.parse(input)
    dispatch(action, x, y, f).execute!
  end


  def handle_composite(input)
    composite = Command::CompositeCommand.new

    command_sets = YAML.load_file(input)
    command_sets.each do |name, set|
      set.each do |c|
        action, x, y, f = @parser.parse(c)
        composite.add_command(dispatch(action, x, y, f))
      end
    end
    composite.execute!
  end


  private

  def dispatch(action, x, y, f)
    case action
      when 'place'then Command::Place.new(@robot, @board, at: [x,y,f])
      when 'move' then Command::Move.new(@robot, @board)
      when 'left' then Command::Left.new(@robot)
      when 'right' then Command::Right.new(@robot)
      when 'report' then Command::Report.new(@robot, @board)
      when 'quit' then exit
      else raise NoMethodError, 'What?'
    end
  end

end
