module FizzBuzzer
  class ModeSelector

    def initialize(history)
      @history = history
    end

    def select(input)
      case input.to_i
      when 0
        nil
      when 1
        Modes::Record.new(Modes::Play.new, @history)
      when 2
        Modes::ShowHistory.new(@history)
      when 3
        Modes::SaveHistory.new(@history)
      end
    end
  end
end
