require 'spec_helper'

module FizzBuzzer
  describe Modes::FizzBuzz do
    it '数字が入力されたらFizzBuzzを実行する' do
      mode = described_class.new
      ui = UISpy.new(15)
      history = HistorySpy.new

      mode.execute(nil, ui, history)

      expect(ui.buffer).to eq("fizzbuzz\n")
    end

    it '数字以外が入力されたらプロンプトに戻る' do
      mode = described_class.new
      ui = UISpy.new('x')
      app = AppSpy.new

      mode.execute(app, ui, nil)

      expect(app.mode).to eq(:prompt)
    end

    it '入力された数字と結果を保持する' do
      mode = described_class.new
      ui = UISpy.new(1, 3, 5)
      history = HistorySpy.new

      mode.execute(nil, ui, history)
      mode.execute(nil, ui, history)
      mode.execute(nil, ui, history)

      expect(history.to_a).to eq([
        { input: '1', result: '1' },
        { input: '3', result: 'fizz' },
        { input: '5', result: 'buzz' },
      ])
    end
  end
end
