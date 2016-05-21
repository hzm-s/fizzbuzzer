module FizzBuzzer
  class App

    def initialize(ui, modes = {})
      @ui = ui
      @modes = modes
      @history = History.new
      @current_mode = nil
      @running = false
    end

    def start!
      boot!
      transit_to!(:guide)
      continue!
    end

    def continue!
      @current_mode.execute(self, @ui, @history)
      return unless running?
      continue!
    end

    def transit_to!(mode_name)
      @current_mode = @modes[mode_name]
    end

    def terminate!
      @running = false
    end

    private

      def boot!
        @running = true
      end

      def running?
        @running
      end
  end
end
