module FizzBuzzer
  class Process

    def initialize(ui, modes)
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
