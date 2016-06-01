require 'spec_helper'

describe 'Show saved history' do
  it do
    input = InputStub.new(["4\n", "0\n"])
    output = OutputSpy.new
    ui = FizzBuzzer::UI.new(input, output)

    data = <<-EOD
2 => 2
3 => fizz
15 => fizzbuzz
    EOD
    store = StoreDouble.new(data)
    app = FizzBuzzer::App.new(ui, store: store)
    app.start

    outputs = output.buffers
    expect(outputs[1]).to eq(data)
  end
end
