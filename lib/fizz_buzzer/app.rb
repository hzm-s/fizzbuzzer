module FizzBuzzer
  class App

    def initialize(ui, history = History.new, store: FileStore.new)
      @ui = ui
      @mode_selector = ModeSelector.new(history, store)
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
        input = @ui.receive_input
        @mode_selector.select(input)
      end
  end
end
