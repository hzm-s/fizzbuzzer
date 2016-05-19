require 'spec_helper'

module FizzBuzzer
  describe Modes::Prompt do
    it '0が入力されたら終了する' do
      mode = described_class.new
      ui = UISpy.new(0)
      app = AppSpy.new

      mode.execute(app, ui)

      expect(app.terminated).to be_truthy
    end

    it '1が入力されたらFizzBuzzを開始する' do
      mode = described_class.new
      ui = UISpy.new(1)
      app = AppSpy.new

      mode.execute(app, ui)

      expect(ui.buffer).to eq("整数を入力してください\n")
      expect(app.mode).to eq(:fizz_buzz)
    end
  end
end
