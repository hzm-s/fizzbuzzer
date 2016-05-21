class App

  def initialize(io)
    @io = io
    @menu = Menu.new
    @history = History.new
  end

  def start
    boot
    interact
  end

  private

    def interact
      return unless action = @menu.detect_action(@io)
      action.execute(@io, @history)
      interact
    end

    def boot
      @io.output(Messages.usage)
    end
end
