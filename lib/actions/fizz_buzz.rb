require 'fizz_buzz_number'

module Actions
  class FizzBuzz

    def initialize
      @processer = FizzBuzzNumber
    end

    def execute(io, history)
      input = prompt(io)
      result = fizzbuzz(input)
      io.output("#{result}\n")
      history.append({ input: input, result: "#{result}" })
    end

    def prompt(io)
      io.output("整数を入力してください\n")
      input = io.receive
    end

    private

      def fizzbuzz(input)
        processer = @processer.new(input.to_i)
        processer.fizzbuzz
      end
  end
end
