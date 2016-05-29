require 'spec_helper'

xdescribe 'Show fizzbuzz history' do
  it do
    input = InputStub.new([
      "1\n", # fizzbuzz
      "2\n",
      "1\n", # fizzbuzz
      "3\n",
      "1\n", # fizzbuzz
      "5\n",
      "2\n", # show history
      "0\n"
    ])
    output = OutputSpy.new

    app = FizzBuzzer::App.new
    cli = FizzBuzzer::CLI.new(app, input, output)
    cli.start

    outputs = output.buffers
    expect(outputs[7]).to eq(
      <<-EOO
2 => 2
3 => fizz
5 => fizzbuzz
      EOO
    )
  end
end
