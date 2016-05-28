require 'fizz_buzz_number'

module FizzBuzzer
  module Modes
    class FizzBuzz

      def prompt
        Messages.fizz_buzz
      end

      def call(value)
        n = FizzBuzzNumber.new(value.to_i)
        n.fizzbuzz
      end
    end
  end
end
