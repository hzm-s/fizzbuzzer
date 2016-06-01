require 'spec_helper'

describe 'Quit app' do
  it do
    input = InputStub.new(["0\n"])
    output = OutputSpy.new
    ui = FizzBuzzer::UI.new(input, output)

    app = FizzBuzzer::App.new(ui)
    app.start

    outputs = output.buffers
    expect(outputs[0]).to eq(
      <<-EOU
メニューを選択してください
1: FizzBuzzをスタート
2: FizzBuzzの結果の履歴を表示
3: FizzBuzzの結果の履歴を保存
4: 保存されているFizzBuzzの結果の履歴を表示
0: 終了
      EOU
    )
  end
end
