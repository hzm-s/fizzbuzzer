require 'spec_helper'

module FizzBuzzer
  describe Modes::Guide do
    it '操作方法を表示して入力待ちモードにする' do
      mode = described_class.new
      ui = UISpy.new
      app = AppSpy.new

      mode.execute(app, ui)

      expect(ui.buffer).to eq(<<-EOD
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
      EOD
      )
      expect(app.mode).to eq(:prompt)
    end
  end
end
