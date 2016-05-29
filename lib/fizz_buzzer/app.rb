require 'fizz_buzz'

module FizzBuzzer
  class App

    def initialize(input, output, mode = Mode.new)
      @input = input
      @output = output
      @mode = mode
    end

    def start
      @output.print(Messages.usage)
      interact
    end

    def interact
      content = @mode.call(receive_input)
      @output.print(content)
      @mode.change!
      interact if @mode.have_next?
    end

    private

      def receive_input
        @output.print('> ')
        value = @input.gets
        value.chomp
      end
  end
end
