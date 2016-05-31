module FizzBuzzer
  class App

    def initialize(ui)
      @ui = ui
      @play = Play.new
    end

    def start
      @ui.output(Messages.usage)
      interact
    end

    def interact
      case @ui.receive_as_string
      when '0'
        return
      when '1'
        @play.run(@ui)
      end
      interact
    end
  end
end
