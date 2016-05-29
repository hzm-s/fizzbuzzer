require 'fizz_buzz'

module FizzBuzzer
  class App

    def initialize(input, output)
      @input = input
      @output = output
      @stopped = false
      @fizz_buzz_mode = false
    end

    def start
      @output.print(Messages.usage)
      interact
    end

    def interact
      if @fizz_buzz_mode
        fizz_buzz
      else
        menu
      end
      interact unless @stopped
    end

    def menu
      value = @input.gets.chomp
      case value
      when '0'
        @stopped = true
      when '1'
        @output.print(Messages.fizz_buzz)
        @fizz_buzz_mode = true
      end
    end

    def fizz_buzz
      value = @input.gets.chomp
      number = value.to_i
      fbn = FizzBuzz.new(number)
      result = fbn.try
      @output.print("#{result}\n")
      @fizz_buzz_mode = false
    end
  end
end
