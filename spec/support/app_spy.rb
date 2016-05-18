class AppSpy
  attr_reader :content, :mode, :terminated

  def initialize(input = nil)
    @input = input.to_s
    @content = nil
    @mode = nil
    @terminated = false
  end

  def input_as_number(*args)
    input(*args).to_i
  end

  def input(*args)
    @input
  end

  def output(content)
    @content = content
  end

  def transit_to!(mode)
    @mode = mode
  end

  def terminate!
    @terminated = true
  end
end
