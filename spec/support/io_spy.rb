class IOSpy
  attr_reader :buffers

  def initialize(*inputs)
    @inputs = inputs.map(&:to_s)
    @buffers = []
  end

  def receive(*args)
    @inputs.shift
  end

  def output(content)
    @buffers << content
  end

  def buffer
    @buffers.last
  end
end
