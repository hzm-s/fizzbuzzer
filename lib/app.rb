class App

  def initialize(ui, modes)
    @ui = ui
    @modes = modes
    @history = History.new
  end

  def start!
    boot
    continue!
  end

  def continue!
    @modes.execute_current(@ui, @history)
    return unless running?
    continue!
  end

  private

    def boot
      @ui.output(Messages.usage)
      @modes.set_current(:prompt)
    end

    def running?
      @modes.current
    end
end
