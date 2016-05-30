module FizzBuzzer
  class UI

    def initialize(input, output)
      @input = input
      @output = output
    end

    def output_with_break(content)
      output("#{content}\n")
    end

    def output(content)
      @output.print(content)
    end

    def receive_as_number
      value = receive_as_string
      value.to_i
    end

    def receive_as_string
      output('> ')
      value = @input.gets
      value.chomp
    end
  end
end
