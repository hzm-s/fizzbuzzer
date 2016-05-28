module FizzBuzzer
  class App

    def initialize
      @modes = {
        menu: Modes::Menu.new,
        fizz_buzz: Modes::FizzBuzz.new,
      }
      @current_mode = nil
    end

    def start
      @current_mode = @modes[:menu]
    end

    def stop
      @current_mode = nil
    end

    def prompt
      @current_mode.prompt
    end

    def change_mode(value)
      case value
      when '1'
        @current_mode = @modes[:fizz_buzz]
      when '0'
        stop
      end
    end

    def call(value)
      @current_mode.call(value)
    end

    def running?
      !@current_mode.nil?
    end
  end
end
