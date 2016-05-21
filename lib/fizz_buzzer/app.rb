module FizzBuzzer
  class App

    def initialize(ui, modes)
      @ui = ui
      @modes = modes
      @history = History.new
    end

    def start!
      @modes.set_current(:guide)
      continue!
    end

    def continue!
      @modes.execute_current(@ui, @history)
      return unless running?
      continue!
    end

    private

      def running?
        @modes.current
      end
  end
end
