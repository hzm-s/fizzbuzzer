module FizzBuzzer
  class Process

    def initialize(input, output)
      ui = CLI.new(input, output)
      @app = App.new(ui)
    end

    def start
      @app.boot!
      while @app.running?
        @app.continue!
      end
    end
  end
end
