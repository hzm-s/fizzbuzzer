module FizzBuzzer
  class Menu
    attr_reader :next

    def call(value)
      case value
      when '0'
        @next = nil
      when '1'
        @next = Play.new(self)
        Messages.fizz_buzz
      end
    end
  end
end
