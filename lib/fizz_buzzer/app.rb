module FizzBuzzer
  class App

    def initialize
      @modes = {
        fizz_buzz: Modes::FizzBuzz.new,
      }
      @current_mode = nil
      @running = false
    end

    def usage
      Messages.usage
    end

    def start
      @running = true
    end

    def stop
      @running = false
    end

    def change_mode(value)
      case value
      when '1'
        @current_mode = @modes[:fizz_buzz]
      when '0'
        stop
      end
    end

    def prompt
      @current_mode.prompt
    end

    def call(value)
      @current_mode.call(value)
    end

    def running?
      @running
    end
  end
end
