module FizzBuzzer
  class Menu

    def initialize
      @play = Play.new
    end

    def start(ui)
      ui.output(Messages.usage)
      interact(ui)
    end

    def interact(ui)
      case ui.receive_as_string
      when '1'
        @play.interact(ui)
      when '0'
        return
      end
      interact(ui)
    end
  end
end
