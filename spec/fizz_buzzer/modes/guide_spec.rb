require 'spec_helper'

module FizzBuzzer
  describe Modes::Guide do
    it do
      mode = described_class.new
      ui = UISpy.new
      app = AppSpy.new(ui)

      mode.execute(app)

      expect(ui.buffer).to eq(<<-EOD
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
      EOD
      )
    end
  end
end
