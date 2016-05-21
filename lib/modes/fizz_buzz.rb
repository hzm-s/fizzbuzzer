require 'fizz_buzz_number'

module Modes
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def execute(app, io, history)
      input = io.input
      result = fizzbuzz(input)
      io.output("#{result}\n")
      history.append({ input: input, result: "#{result}" })
      app.transit_to!(:prompt)
    end

    private

      def fizzbuzz(input)
        processer = @processer.new(input.to_i)
        processer.fizzbuzz
      end
  end
end
