class AppSpy
  attr_reader :mode, :terminated

  def initialize
    @mode = nil
    @terminated = false
  end

  def transit_to!(mode)
    @mode = mode
  end

  def terminate!
    @terminated = true
  end
end
