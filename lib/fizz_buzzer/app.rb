module FizzBuzzer
  class App

    def initialize(ui, modes)
      @ui = ui
      @modes = modes
      @current_mode = nil
      @running = false
    end

    def boot!
      @running = true
      transit_to!(:guide)
      continue!
    end

    def terminate!
      @running = false
    end

    def continue!
      @current_mode.execute(self)
    end

    def transit_to!(mode_name)
      @current_mode = @modes[mode_name]
    end

    def input(*args)
      @ui.input(*args)
    end

    def input_as_number(*args)
      input(*args).to_i
    end

    def output(content)
      @ui.output(content)
    end

    def running?
      @running
    end
  end
end
