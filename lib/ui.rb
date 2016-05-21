class UI

  def initialize(io)
    @io = io
  end

  def receive
    @io.receive
  end

  def output(content)
    @io.output(content)
  end
end
