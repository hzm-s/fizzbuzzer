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
      prompt = @app.prompt
      @output.print(prompt)
      @output.print("\n")
      @output.print('> ')

      line = @input.gets
      value = line.chomp
      content = @app.call(value)
      @output.print(content) if content

      @app.change_mode

      return unless @app.running?
      interact
    end
  end
end
