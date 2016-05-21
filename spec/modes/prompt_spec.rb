require 'spec_helper'

module Modes
  describe Prompt do
    it '0が入力されたら終了する' do
      ui = UISpy.new(0)
      modes = ModeSpy.new

      mode = described_class.new
      mode.execute(modes, ui)

      expect(modes.current).to be_nil
    end

    it '1が入力されたらFizzBuzzを開始する' do
      ui = UISpy.new(1)
      modes = ModeSpy.new

      mode = described_class.new
      mode.execute(modes, ui)

      expect(ui.buffer).to eq("整数を入力してください\n")
      expect(modes.current).to eq(:fizz_buzz)
    end
  end
end
