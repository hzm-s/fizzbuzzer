require 'spec_helper'

module FizzBuzzer
  describe Modes::FizzBuzz do
    it '数字が入力されたらFizzBuzzを実行する' do
      mode = described_class.new
      ui = UISpy.new(15)

      mode.execute(nil, ui)
      
      expect(ui.buffer).to eq("fizzbuzz\n")
    end

    xit '入力された数字と結果を保持する' do
      mode = described_class.new
      ui = UISpy.new(1, 3, 5)
      storage = {}
      app = App.new(ui, storage)

      mode.execute(app)
      mode.execute(app)
      mode.execute(app)
      
      expect(storage[:history]).to eq([
        { input: '1', result: '1' },
        { input: '3', result: 'fizz' },
        { input: '5', result: 'buzz' },
      ])
    end

    it '数字以外が入力されたらプロンプトに戻る' do
      mode = described_class.new
      ui = UISpy.new('x')
      app = AppSpy.new

      mode.execute(app, ui)
      
      expect(app.mode).to eq(:prompt)
    end
  end
end
