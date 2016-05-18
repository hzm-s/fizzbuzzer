require 'spec_helper'

describe FizzBuzzer::Modes::Guide do
  it do
    mode = described_class.new
    app = AppSpy.new

    mode.execute(app)

    expect(app.content).to eq(<<-EOD
メニューを選択してください
1: FizzBuzzをスタート
0: 終了
    EOD
    )
  end
end
