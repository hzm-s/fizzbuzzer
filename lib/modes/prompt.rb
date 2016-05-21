module Modes
  class Prompt

    def execute(app, ui, _ = nil)
      case ui.input
      when '0'
        app.terminate!
      when '1'
        ui.output("整数を入力してください\n")
        app.transit_to!(:fizz_buzz)
      end
    end
  end
end
