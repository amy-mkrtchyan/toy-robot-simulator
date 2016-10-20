Dir[File.join(File.dirname(__FILE__), '/**/*.rb')].each { |f| require f }

class Game

  def initialize
    @robot = Robot.new
    @board = PlayBoard.new
  end

  def place(x, y, f)
    Command::Place.new(@robot, on: @board, at: [x, y, f]).execute!
  end

  def move
    Command::Move.new(@robot, @board).execute!
  end

  def left
    Command::Left.new(@robot).execute!
  end

  def right
    Command::Right.new(@robot).execute!
  end

  def report
    Command::Report.new(@robot).execute!
  end

  def quit
    exit(0)
  end

  def playboard_x
    @board.size_x
  end

  def playboard_y
    @board.size_y
  end

end
