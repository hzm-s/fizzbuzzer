class StoreSpy

  def initialize
    @data = nil
  end

  def save(data)
    @data = data
  end

  def load
    @data
  end
end
