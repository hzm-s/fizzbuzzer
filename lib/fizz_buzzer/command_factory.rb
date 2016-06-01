module FizzBuzzer
  class CommandFactory
    CREATION_METHODS = {
      '0' => :quit,
      '1' => :play_with_reocrd,
      '2' => :show_history,
      '3' => :save_history,
      '4' => :load_history,
    }

    def initialize(history, store)
      @history = history
      @store = store
    end

    def create(input)
      self.send(CREATION_METHODS[input])
    end

    private

      def quit
        nil
      end

      def play_with_reocrd
        Commands::Record.new(Commands::Play.new, @history)
      end

      def show_history
        Commands::ShowHistory.new(@history)
      end

      def save_history
        Commands::SaveHistory.new(@history, @store)
      end

      def load_history
        Commands::LoadHistory.new(@store)
      end
  end
end
