module FizzBuzzer
  class UI

    def initialize(input, output)
      @input = input
      @output = output
    end

    def output(content)
      string = content.to_s
      string += "\n" unless string.end_with?("\n")
      @output.print(string)
    end

    def prompt(message)
      output(message)
    end

    def receive_input
      @output.print('> ')
      value = @input.gets
      value.chomp
    end
  end
end
