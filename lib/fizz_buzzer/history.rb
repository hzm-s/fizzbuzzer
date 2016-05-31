require 'delegate'

module FizzBuzzer
  class History < SimpleDelegator

    def initialize
      super([])
    end

    def record(input, result)
      self << "#{input} => #{result}"
    end

    def show
      join("\n")
    end
  end
end
