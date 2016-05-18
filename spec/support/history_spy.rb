require 'delegate'

class HistorySpy < SimpleDelegator

  def initialize
    super([])
  end

  def append(data)
    self << data
  end
end
