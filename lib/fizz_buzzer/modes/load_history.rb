module FizzBuzzer
  module Modes
    class LoadHistory

      def initialize(store)
        @store = store
      end

      def receive_input(_)
      end

      def run(_ = nil)
        History.load_from_store(@store)
      end
    end
  end
end
