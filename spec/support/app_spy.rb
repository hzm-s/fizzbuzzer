class AppSpy
  attr_reader :mode, :terminated

  def initialize(ui, _ = nil)
    @ui = ui
    @mode = nil
    @terminated = false
  end

  def input_as_number(*args)
    input(*args).to_i
  end

  def input(*args)
    @ui.input
  end

  def output(content)
    @ui.output(content)
  end

  def transit_to!(mode)
    @mode = mode
  end

  def terminate!
    @terminated = true
  end
end
