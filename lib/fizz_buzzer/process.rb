module FizzBuzzer
  class Process

    def initialize(input, output)
      @ui = CLI.new(input, output)
    end

    def start
      loop do
        @ui.output("choose menu\n")
        input = @ui.input
        break if input == '0'
        @ui.output("#{input}\n")
      end
    end
  end
end
