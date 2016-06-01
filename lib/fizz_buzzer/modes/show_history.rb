module FizzBuzzer
  module Modes
    class ShowHistory

      def initialize(history)
        @history = history
      end

      def receive_input(_)
      end

      def run(_)
        if @history.respond_to?(:run)
          @history.run
        else
          @history.to_s
        end
      end
    end
  end
end
