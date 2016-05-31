module FizzBuzzer
  module Modes
    class Record

      def initialize(mode, history)
        @mode = mode
        @history = history
      end

      def receive_input(ui)
        @mode.receive_input(ui)
      end

      def run(input)
        result = @mode.run(input)
        @history.record(input, result)
        result
      end
    end
  end
end
