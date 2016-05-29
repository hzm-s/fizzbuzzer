require 'spec_helper'

describe 'Play fizzbuzz' do
  it do
    input = InputStub.new([
      "1\n",
      "2\n",
      "1\n",
      "15\n",
      "0\n",
    ])
    output = OutputSpy.new

    app = FizzBuzzer::App.new(input, output)
    app.start

    outputs = output.buffers
    expect(outputs[1]).to eq("整数を入力してください\n")
    expect(outputs[2]).to eq("2\n")
    expect(outputs[3]).to eq("整数を入力してください\n")
    expect(outputs[4]).to eq("fizzbuzz\n")
  end
end
