require 'spec_helper'

describe Actions::ShowHistory do
  it 'FizzBuzzの履歴を表示する' do
    ui = TestUI.new
    history = History.new([
      { input: 1, result: 1 },
      { input: 3, result: 'fizz' },
      { input: 5, result: 'buzz' },
    ])

    action = described_class.new
    action.run(ui, history)

    expect(ui.buffer).to eq(
      <<-EOC
1 => 1
3 => fizz
5 => buzz
      EOC
    )
  end
end
