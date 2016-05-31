module FizzBuzzer
  class App

    def initialize(ui)
      @ui = ui
    end

    def start
      @ui.output(Messages.usage)
      interact
    end

    def interact
      return unless mode = select_mode(@ui.receive_input)

      @ui.prompt(mode.message)
      input = @ui.receive_input
      result = mode.run(input)
      @ui.output(result)

      interact
    end

    private

      def select_mode(input)
        case input.to_i
        when 0
          nil
        when 1
          Play.new
        #when 2
        #  Record.new(Play.new)
        end
      end
  end
end
