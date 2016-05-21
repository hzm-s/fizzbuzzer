require 'fizz_buzz_number'

module Actions
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def run(ui, history)
      input = prompt(ui)
      result = fizzbuzz(input)
      ui.output("#{result}\n")
      history.append({ input: input, result: "#{result}" })
    end

    def prompt(ui)
      ui.output("整数を入力してください\n")
      input = ui.receive
    end

    private

      def fizzbuzz(input)
        processer = @processer.new(input.to_i)
        processer.fizzbuzz
      end
  end
end
