module FizzBuzzer::Modes
  class Prompt

    def execute(app)
      input = app.input
      number = input.to_i
      case number
      when 0
        app.terminate!
      when 1
        app.transit_to!(FizzBuzz.new)
      else
        app.output("?\n")
      end
    end
  end
end
