class History

  def initialize(records = [])
    @records = records
  end

  def append(record)
    @records << record
  end
end
