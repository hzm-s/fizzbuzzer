module FizzBuzzer
  module Modes
    class Menu

      def prompt
        Messages.usage
      end

      def call(value)
        fail 'do not call'
      end
    end
  end
end
