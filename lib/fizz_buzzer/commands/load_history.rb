module FizzBuzzer
  module Commands
    class LoadHistory

      def initialize(store)
        @store = store
      end

      def receive_input(_)
      end

      def run(_)
        history = History.load_from_store(@store)
        history.to_s
      end
    end
  end
end
