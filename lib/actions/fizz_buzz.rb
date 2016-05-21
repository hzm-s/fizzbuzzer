require 'fizz_buzz_number'

module Actions
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def run(ui, history)
      input = prompt(ui)
      result = fizzbuzz(input)
      add_history(input, result, history)
      ui.output("#{result}\n")
    end

    private

      def fizzbuzz(input)
        processer = @processer.new(input.to_i)
        processer.fizzbuzz
      end

      def prompt(ui)
        ui.output("整数を入力してください\n")
        input = ui.receive
      end

      def add_history(input, result, history)
        history.add(input: input, result: "#{result}")
      end
  end
end
