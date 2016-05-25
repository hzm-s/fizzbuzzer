require 'fizz_buzz_number'

module FizzBuzzer
  class App

    def initialize
      @modes = {
        menu: Modes::Menu.new,
      }
      @running = false
    end

    def start
      @running = true
    end

    def stop
      @running = false
    end

    def prompt
      @modes[:menu].prompt
    end

    def call(value)
      @modes[:menu].call(value)
    end

    def change_mode
      @modes[:menu].change_mode(self)
    end

    def running?
      @running
    end
  end
end
