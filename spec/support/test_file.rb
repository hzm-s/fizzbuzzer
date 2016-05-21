class TestFile

  def initialize(content = nil)
    @content = content
  end

  def write(_, content)
    @content = content
  end

  def read(_)
    @content
  end
end
