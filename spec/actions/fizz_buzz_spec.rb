require 'spec_helper'

module Actions
  describe FizzBuzz do
    it 'FizzBuzzを実行する' do
      ui = TestUI.new(15)
      history = HistorySpy.new

      action = described_class.new
      action.run(ui, history)

      expect(ui.buffer).to eq("fizzbuzz\n")
    end

    it '入力された数字と結果を保持する' do
      ui = TestUI.new(1, 3, 5)
      history = HistorySpy.new

      action = described_class.new
      action.run(ui, history)
      action.run(ui, history)
      action.run(ui, history)

      expect(history.to_a).to eq([
        { input: '1', result: '1' },
        { input: '3', result: 'fizz' },
        { input: '5', result: 'buzz' },
      ])
    end
  end
end
