module FizzBuzzer
  module Modes
    module Selector
      module_function

      def select(input, history)
        case input.to_i
        when 0
          nil
        when 1
          Record.new(Play.new, history)
        when 2
          ShowHistory.new(history)
        end
      end
    end
  end
end
