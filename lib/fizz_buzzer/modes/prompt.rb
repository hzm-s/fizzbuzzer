module FizzBuzzer::Modes
  class Prompt

    def execute(app)
      number = receive_input_as_number(app)
      case number
      when 0
        app.terminate!
      when 1
        app.transit_to!(FizzBuzz.new)
      end
    end

    private

      def receive_input_as_number(app)
        input = app.input
        input.to_i
      end
  end
end
