require 'delegate'

class HistorySpy < SimpleDelegator

  def initialize(logs = [])
    super(logs)
  end

  def add(data)
    self << data
  end
end
