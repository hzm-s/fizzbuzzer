class ModeSpy
  attr_reader :current

  def initialize
    @current = nil
  end

  def transit_to!(mode_name)
    @current = mode_name
  end

  def terminate!
    transit_to!(nil)
  end
end
