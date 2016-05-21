require 'spec_helper'

module Modes
  describe Guide do
    it '操作方法を表示して入力待ちモードにする' do
      ui = UISpy.new
      modes = ModeSpy.new

      mode = described_class.new
      mode.execute(modes, ui)

      expect(ui.buffer).to eq(<<-EOD
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
      EOD
      )
      expect(modes.current).to eq(:prompt)
    end
  end
end
