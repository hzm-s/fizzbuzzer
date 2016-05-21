require 'spec_helper'

module FizzBuzzer
  describe 'Play fizz buzz' do
    let(:modes) { ModeContainer.setup }

    it do
      ui = UISpy.new(
        1, # fizzbuzz mode
        2, 
        1, # fizzbuzz mode
        3,
        1, # fizzbuzz mode
        5,
        1, # fizzbuzz mode
        15,
        0, # quit
      )
      app = App.new(ui, modes)

      app.start!

      expect(ui.buffers).to eq([
        USAGE,
        "整数を入力してください\n",
        "2\n",
        "整数を入力してください\n",
        "fizz\n",
        "整数を入力してください\n",
        "buzz\n",
        "整数を入力してください\n",
        "fizzbuzz\n"
      ])
    end
  end
end
