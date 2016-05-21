class Menu

  def detect_action(input)
    return nil if input == '0'
    Actions::FizzBuzz.new
  end
end
