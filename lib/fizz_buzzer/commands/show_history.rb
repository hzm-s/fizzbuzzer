module FizzBuzzer
  module Commands
    class ShowHistory < Base

      def initialize(history)
        @history = history
      end

      def run(_)
        @history.to_s
      end
    end
  end
end
