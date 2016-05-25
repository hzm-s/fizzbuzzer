module FizzBuzzer
  module Modes
    class Menu

      def prompt
        Messages.usage
      end

      def call(value)
      end

      def change_mode(app)
        app.stop
      end
    end
  end
end
