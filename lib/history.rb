require 'yaml'

class History < SimpleDelegator
  class << self
    attr_accessor :store
  end

  def initialize(logs = [])
    super(logs)
  end

  def add(log)
    self << log
  end

  def save
    self.class.store.write('/tmp/fizz_buzzer.yml', to_yaml)
  end

  def to_s
    map { |log| "#{log[:input]} => #{log[:result]}" }
      .join("\n")
  end
end
