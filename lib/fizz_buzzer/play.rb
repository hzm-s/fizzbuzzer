module FizzBuzzer
  class Play
    attr_reader :next

    def initialize(parent)
      @next = parent
    end

    def call(value)
      number = value.to_i
      fbn = FizzBuzz.new(number)
      result = fbn.try
      "#{result}\n"
    end
  end
end
