module FizzBuzzer
  module Commands
    class LoadHistory < Base

      def initialize(store)
        @store = store
      end

      def run(_)
        history = History.load_from_store(@store)
        history.to_s
      end
    end
  end
end
