class StdIO

  def initialize(input, output)
    @input = input
    @output = output
  end

  def receive(prefix = '')
    output("#{prefix}> ")
    @input.gets.chomp
  end

  def output(content)
    @output.print(content)
  end
end
