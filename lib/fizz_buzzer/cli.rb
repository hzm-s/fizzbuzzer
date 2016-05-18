module FizzBuzzer
  class CLI

    def initialize(input, output)
      @input = input
      @output = output
    end

    def input(prefix = '')
      output("#{prefix}> ")
      @input.gets.chomp
    end

    def output(content)
      @output.print(content)
    end
  end
end
