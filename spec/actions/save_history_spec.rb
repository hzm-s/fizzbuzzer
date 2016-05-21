require 'spec_helper'
require 'yaml'

describe Actions::SaveHistory do
  it 'FizzBuzzの履歴をファイルに保存する' do
    ui = TestUI.new

    store = TestFile.new
    History.store = store
    history = History.new([
      { input: 1, result: 1 },
      { input: 3, result: 'fizz' },
      { input: 5, result: 'buzz' },
    ])

    action = described_class.new
    action.run(ui, history)

    expect(store.read(nil)).to eq(
      YAML.dump([
        { input: 1, result: 1 },
        { input: 3, result: 'fizz' },
        { input: 5, result: 'buzz' },
      ])
    )
  end
end
