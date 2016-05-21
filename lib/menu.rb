class Menu

  def detect_action(io)
    input = io.receive
    return nil if input == '0'
    Actions::FizzBuzz.new
  end
end
