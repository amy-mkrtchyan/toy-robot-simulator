class CmdParser

  def parse(input)
    # returns action, x, y, f
    input.downcase.split(/\W+/).reject { |w| w.empty? }
  end

end
