module FizzBuzzer
  module Commands
    class ShowUsage < Base

      def run(_)
        Messages.usage
      end
    end
  end
end
