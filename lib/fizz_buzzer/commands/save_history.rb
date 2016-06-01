module FizzBuzzer
  module Commands
    class SaveHistory < Base

      def initialize(history, store)
        @history = history
        @store = store
      end

      def run(_)
        @history.save_to_store(@store)
        Messages.saved
      end
    end
  end
end
