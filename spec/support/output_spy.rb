class OutputSpy
  attr_reader :buffers

  def initialize
    @buffers = []
  end

  def print(string)
    return if string == '> '
    @buffers << string
  end
end
