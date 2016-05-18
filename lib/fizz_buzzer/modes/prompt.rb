module FizzBuzzer::Modes
  class Prompt

    def execute(app, ui)
      case receive_input_as_number(ui)
      when 0
        app.terminate!
      when 1
        app.transit_to!(:fizz_buzz)
      end
    end

    private

      def receive_input_as_number(ui)
        ui.input.to_i
      end
  end
end
