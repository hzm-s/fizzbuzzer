module FizzBuzzer
  class CLI

    def initialize(app, input, output)
      @app = app
      @input = input
      @output = output
    end

    def start
      @app.start
      interact
    end

    def interact
      input = receive_input_with_message(@app.usage)
      @app.change_mode(input)

      while @app.running?
        input = receive_input_with_message(@app.prompt)
        content = @app.call(input)
        output_with_cr(content)

        input = receive_input
        @app.change_mode(input)
      end
    end

    private

      def output_with_cr(content)
        @output.print("#{content}\n")
      end

      def receive_input_with_message(message)
        @output.print(message)
        receive_input
      end

      def receive_input
        @output.print('> ')
        @input.gets.chomp
      end
  end
end
