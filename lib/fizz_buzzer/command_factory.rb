module FizzBuzzer
  class CommandFactory

    def initialize(history, store)
      @history = history
      @store = store
    end

    def create(input)
      case input.to_i
      when 0
        nil
      when 1
        Commands::Record.new(Commands::Play.new, @history)
      when 2
        Commands::ShowHistory.new(@history)
      when 3
        Commands::SaveHistory.new(@history, @store)
      when 4
        Commands::LoadHistory.new(@store)
      end
    end
  end
end
