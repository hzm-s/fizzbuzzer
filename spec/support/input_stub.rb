class InputStub

  def initialize(lines)
    @lines = lines
  end

  def gets
    @lines.shift
  end
end
