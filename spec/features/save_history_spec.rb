require 'spec_helper'

describe 'Save History' do
  it do
    ui = TestUI.new(
      1, # fizzbuzz mode
      15,
      3, # save history
      0
    )

    app = App.new(ui)
    app.start

    expect(ui.buffers).to eq([
      Messages.usage,
      "整数を入力してください\n",
      "fizzbuzz\n",
      "FizzBuzzの履歴を保存しました\n"
    ])
  end
end
