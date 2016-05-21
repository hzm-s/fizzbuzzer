class App

  def initialize(io, modes)
    @io = io
    @modes = modes
    @history = History.new
  end

  def start!
    boot
    continue!
  end

  def continue!
    @modes.execute_current(@io, @history)
    return unless running?
    continue!
  end

  private

    def boot
      @io.output(Messages.usage)
      @modes.set_current(:prompt)
    end

    def running?
      @modes.current
    end
end
