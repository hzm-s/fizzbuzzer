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
      return unless action = detect_action
      action.execute(@io, @history)
      interact
    end

    def detect_action
      input = @io.receive
      @menu.detect_action(input)
    end

    def boot
      @io.output(Messages.usage)
    end
end
