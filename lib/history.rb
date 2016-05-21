class History < SimpleDelegator

  def initialize(logs = [])
    super([])
    logs.each { |l| self.add(l) }
  end

  def add(input:, result:)
    self << Log.new(input, result)
  end

  def to_s
    map(&:to_s).join("\n")
  end

  Log = Struct.new(:input, :result) do

    def to_s
      "#{input} => #{result}"
    end
  end
end
