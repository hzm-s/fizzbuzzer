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
      creation_method = lookup_creation_method(input)
      self.send(creation_method)
    end

    private

      def lookup_creation_method(input)
        CREATION_METHODS.fetch(input, :show_usage)
      end

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

      def show_usage
        Commands::ShowUsage.new
      end
  end
end
