require 'spec_helper'

describe 'Show FizzBuzz history' do
  it do
    ui = TestUI.new(
      1, # fizzbuzz mode
      2,
      1, # fizzbuzz mode
      3,
      1, # fizzbuzz mode
      5,
      1, # fizzbuzz mode
      15,
      2, # show history mode
      0, # quit
    )

    app = App.new(ui)
    app.start

    expect(ui.buffers).to eq([
      Messages.usage,
      "整数を入力してください\n",
      "2\n",
      "整数を入力してください\n",
      "fizz\n",
      "整数を入力してください\n",
      "buzz\n",
      "整数を入力してください\n",
      "fizzbuzz\n",
      <<-EOH
2 => 2
3 => fizz
5 => buzz
15 => fizzbuzz
      EOH
    ])
  end
end
