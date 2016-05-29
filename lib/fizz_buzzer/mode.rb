module FizzBuzzer
  class Mode

    def initialize
      @current = Menu.new
    end

    def call(value)
      @current.call(value)
    end

    def change!
      @current = @current.next
    end

    def have_next?
      @current
    end
  end
end
