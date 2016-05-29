require 'spec_helper'

describe 'Quit app' do
  it do
    input = InputStub.new(["0\n"])
    output = OutputSpy.new

    app = FizzBuzzer::App.new(input, output)
    app.start

    outputs = output.buffers
    expect(outputs[0]).to eq(
      <<-EOU
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
      EOU
    )
  end
end
