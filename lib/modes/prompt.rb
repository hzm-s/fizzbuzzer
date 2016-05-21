module Modes
  class Prompt

    def execute(app, io, _ = nil)
      case io.receive
      when '0'
        app.terminate!
      when '1'
        io.output("整数を入力してください\n")
        app.transit_to!(:fizz_buzz)
      end
    end
  end
end
