require 'fizz_buzz_number'

module FizzBuzzer::Modes
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def execute(app, ui)
      input = ui.input('fizz-buzz')
      return finish(app) if abort?(input)
      fizzbuzz(input, ui)
    end

    private

      def abort?(input)
        /^\d+$/.match(input).!
      end

      def finish(app)
        app.transit_to!(:prompt)
      end

      def fizzbuzz(input, ui)
        processer = @processer.new(input.to_i)
        result = processer.fizzbuzz
        ui.output("#{result}\n")
      end
  end
end
