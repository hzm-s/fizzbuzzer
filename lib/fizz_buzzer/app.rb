module FizzBuzzer
  class App

    def initialize(ui)
      @ui = ui
      @history = History.new
      @mode_selector = Modes::Selector
    end

    def start
      @ui.output(Messages.usage)
      interact
    end

    def interact
      return unless mode = select_mode
      interact_with_mode(mode)
      interact
    end

    private

      def interact_with_mode(mode)
        input = mode.receive_input(@ui)
        result = mode.run(input)
        @ui.output(result)
      end

      def select_mode
        @mode_selector.select(@ui.receive_input, @history)
      end
  end
end
