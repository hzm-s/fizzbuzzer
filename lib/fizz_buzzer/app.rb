module FizzBuzzer
  class App

    def initialize(ui, menu = Menu.new)
      @ui = ui
      @menu = menu
    end

    def start
      @menu.start(@ui)
    end
  end
end
