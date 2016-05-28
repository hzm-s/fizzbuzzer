module FizzBuzzer
  class CLI

    def initialize(app, input, output)
      @app = app
      @input = input
      @output = output
    end

    def start
      @app.start

      usage = @app.usage
      @output.print(usage)

      interact
    end

    def interact
      @output.print('> ')
      line = @input.gets
      value = line.chomp
      @app.change_mode(value)

      return unless @app.running?

      prompt = @app.prompt
      @output.print(prompt)
      @output.print('> ')

      line = @input.gets
      value = line.chomp
      content = @app.call(value)
      @output.print("#{content}\n")

      interact
    end
  end
end
