require 'fizz_buzz'

module FizzBuzzer
  module Commands
    class Play

      def receive_input(ui)
        message = Messages.fizz_buzz
        ui.receive_input_with_message(message)
      end

      def run(input)
        number = input.to_i
        fb = FizzBuzz.new(number)
        fb.try
      end
    end
  end
end
