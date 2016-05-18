require 'fizz_buzz_number'

module FizzBuzzer::Modes
  class FizzBuzz

    def execute(app)
      input = app.input('fizz-buzz')
      if input =~ /^\d+$/
        fbn = FizzBuzzNumber.new(input.to_i)
        result = fbn.fizzbuzz
        app.output("#{result}\n")
      else
        app.transit_to!(Prompt.new)
      end
    end
  end
end
