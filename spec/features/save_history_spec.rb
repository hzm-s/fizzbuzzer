require 'spec_helper'

describe 'Save history' do
  it do
    input = InputStub.new(["3\n", "0\n"])
    output = OutputSpy.new
    ui = FizzBuzzer::UI.new(input, output)

    app = FizzBuzzer::App.new(ui, store: StoreDouble.new)
    app.start

    outputs = output.buffers
    expect(outputs[1]).to eq("履歴を保存しました\n")
  end
end
