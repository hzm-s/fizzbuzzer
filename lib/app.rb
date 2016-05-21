class App

  def initialize(ui)
    @ui = ui
    @menu = Menu.new
    @history = History.new
  end

  def start
    boot
    interact
  end

  private

    def interact
      return unless action = @menu.detect_action(@ui)
      action.run(@ui, @history)
      interact
    end

    def boot
      @ui.output(Messages.usage)
    end
end
