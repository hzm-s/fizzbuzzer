require 'fizz_buzz'

module FizzBuzzer
  class Play

    def message
      Messages.fizz_buzz
    end

    def run(input)
      number = input.to_i
      fb = FizzBuzz.new(number)
      fb.try
    end
  end
end
