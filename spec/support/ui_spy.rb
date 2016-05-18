class UISpy
  attr_reader :buffer

  def initialize(*inputs)
    @inputs = inputs.map(&:to_s)
    @buffer = nil
  end

  def input(*args)
    @inputs.shift
  end

  def output(content)
    @buffer = content
  end
end
