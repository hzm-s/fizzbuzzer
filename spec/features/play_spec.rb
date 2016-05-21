require 'spec_helper'

module FizzBuzzer
  describe 'Play fizz buzz' do
    it do
      ui = UISpy.new(1, 2, 3, 5, 15, 'a', 0)
      modes = ModeContainer.setup
      app = App.new(ui, modes)

      app.start!

      expect(ui.buffers).to eq([
        USAGE,
        "整数を入力してください\n",
        "2\n",
        "fizz\n",
        "buzz\n",
        "fizzbuzz\n"
      ])
    end
  end
end
