require 'fizz_buzz_number'

module FizzBuzzer::Modes
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def execute(app, ui, history)
      input = ui.input
      result = fizzbuzz(input)
      ui.output("#{result}\n")
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
