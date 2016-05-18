require 'fizz_buzz_number'

module FizzBuzzer::Modes
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def execute(app)
      input = app.input('fizz-buzz')
      if input =~ /^\d+$/
        fbn = @processer.new(input.to_i)
        result = fbn.fizzbuzz

        app.output("#{result}\n")
      else
        app.transit_to!(:prompt)
      end
    end
  end
end
