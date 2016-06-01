module FizzBuzzer
  class ModeSelector

    def initialize(history, store)
      @history = history
      @store = store
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
        Modes::SaveHistory.new(@history, @store)
      when 4
        Modes::ShowHistory.new(Modes::LoadHistory.new(@store))
      end
    end
  end
end
