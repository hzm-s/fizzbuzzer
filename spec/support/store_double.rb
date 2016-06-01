class StoreDouble

  def initialize(data = nil)
    @data = data
  end

  def save(data)
    @data = data
  end

  def load
    @data
  end
end
