class Menu

  def detect_action(ui)
    input = ui.receive
    return nil if input == '0'
    Actions::FizzBuzz.new
  end
end
