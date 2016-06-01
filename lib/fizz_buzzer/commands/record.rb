module FizzBuzzer
  module Commands
    class Record

      def initialize(command, history)
        @command = command
        @history = history
      end

      def receive_input(ui)
        @command.receive_input(ui)
      end

      def run(input)
        result = @command.run(input)
        @history.record(input, result)
        result
      end
    end
  end
end
