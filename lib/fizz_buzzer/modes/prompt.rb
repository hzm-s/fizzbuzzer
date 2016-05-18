module FizzBuzzer::Modes
  class Prompt

    def execute(app)
      case app.input_as_number
      when 0
        app.terminate!
      when 1
        app.transit_to!(:fizz_buzz)
      end
    end
  end
end
