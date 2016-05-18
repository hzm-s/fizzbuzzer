module FizzBuzzer
  class Process

    def initialize(input, output)
      ui = CLI.new(input, output)
      modes = {
        guide: FizzBuzzer::Modes::Guide.new,
        prompt: FizzBuzzer::Modes::Prompt.new,
        fizz_buzz: FizzBuzzer::Modes::FizzBuzz.new,
      }
      @app = App.new(ui, modes)
    end

    def start
      @app.boot!
      while @app.running?
        @app.continue!
      end
    end
  end
end
