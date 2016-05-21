require 'spec_helper'

module Actions
  xdescribe FizzBuzz do
    it 'FizzBuzzを実行する' do
      io = IOSpy.new(15)
      history = HistorySpy.new

      mode = described_class.new
      mode.execute(io, history)

      expect(io.buffer).to eq("fizzbuzz\n")
    end

    it '入力された数字と結果を保持する' do
      io = IOSpy.new(1, 3, 5)
      history = HistorySpy.new

      mode = described_class.new
      mode.execute(io, history)
      mode.execute(io, history)
      mode.execute(io, history)

      expect(history.to_a).to eq([
        { input: '1', result: '1' },
        { input: '3', result: 'fizz' },
        { input: '5', result: 'buzz' },
      ])
    end
  end
end
