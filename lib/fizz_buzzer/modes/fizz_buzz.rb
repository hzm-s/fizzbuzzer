require 'fizz_buzz_number'

module FizzBuzzer
  module Modes
    class FizzBuzz

      def initialize(history)
        @history = history
      end

      def execute(number)
        fizz_buzz_number = FizzBuzzNumber.new(number.to_i)
        result = fizz_buzz_number.fizzbuzz
        @history << "#{number} => #{result}"
      end
    end
  end
end
