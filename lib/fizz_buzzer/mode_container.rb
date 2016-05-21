module FizzBuzzer
  class ModeContainer < SimpleDelegator
    class << self

      def setup(map = default)
        new(map)
      end

      private

        def default
          setup(
            guide: FizzBuzzer::Modes::Guide.new,
            prompt: FizzBuzzer::Modes::Prompt.new,
            fizz_buzz: FizzBuzzer::Modes::FizzBuzz.new,
          )
        end
    end
  end
end
