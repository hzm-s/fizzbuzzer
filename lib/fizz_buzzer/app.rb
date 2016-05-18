module FizzBuzzer
  class App

    def initialize(ui)
      @ui = ui
      @running = false
      @mode = nil
    end

    def boot!
      @running = true
      transit_to!(Modes::Guide.new)
      continue!
    end

    def terminate!
      @running = false
    end

    def continue!
      @mode.execute(self)
    end

    def transit_to!(mode)
      @mode = mode
    end

    def input(*args)
      @ui.input(*args)
    end

    def output(content)
      @ui.output(content)
    end

    def running?
      @running
    end
  end
end
