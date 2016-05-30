require 'fizz_buzz'

module FizzBuzzer
  class Play

    def interact(ui)
      ui.output(Messages.fizz_buzz)
      number = ui.receive_as_number
      fb = FizzBuzz.new(number)
      result = fb.try
      ui.output_with_break(result)
    end
  end
end
