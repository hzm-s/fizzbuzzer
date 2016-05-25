require 'spec_helper'

describe 'Play fizzbuzz' do
  it do
    input = InputStub.new([
      "0\n"
#      "1\n", # fizzbuzz
#      "2\n",
#      "1\n", # fizzbuzz
#      "3\n",
#      "1\n", # fizzbuzz
#      "5\n",
    ])
    output = OutputSpy.new

    app = FizzBuzzer::App.new
    cli = FizzBuzzer::CLI.new(app, input, output)
    cli.start
    outputs = output.buffers

    expect(outputs[0]).to eq(
      <<-EOU
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
      EOU
    )
    #expect(outputs[1]).to eq("整数を入力してください\n")
    #expect(outputs[2]).to eq("2\n")
    #expect(outputs[3]).to eq("整数を入力してください\n")
    #expect(outputs[4]).to eq("fizz\n")
    #expect(outputs[5]).to eq("整数を入力してください\n")
    #expect(outputs[6]).to eq("buzz\n")
  end
end
