class CommandBase

  def initialize
    raise NotImplementedError
  end

  def execute!
    raise NotImplementedError
  end

end
