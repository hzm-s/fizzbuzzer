require 'fizz_buzz_number'

module FizzBuzzer::Modes
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def execute(app, ui, history)
      input = ui.input('fizz-buzz')
      return finish(app) if abort?(input)
      result = fizzbuzz(input)
      ui.output("#{result}\n")
      history.append({ input: input, result: "#{result}" })
    end

    private

      def abort?(input)
        /^\d+$/.match(input).!
      end

      def finish(app)
        app.transit_to!(:prompt)
      end

      def fizzbuzz(input)
        processer = @processer.new(input.to_i)
        processer.fizzbuzz
      end
  end
end
