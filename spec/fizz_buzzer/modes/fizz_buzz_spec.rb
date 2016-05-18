require 'spec_helper'

describe FizzBuzzer::Modes::FizzBuzz do
  it '数字が入力されたらFizzBuzzを実行する' do
    mode = described_class.new
    app = AppSpy.new(15)

    mode.execute(app)
    
    expect(app.content).to eq("fizzbuzz\n")
  end

  it '数字以外が入力されたらプロンプトに戻る' do
    mode = described_class.new
    app = AppSpy.new('a')

    mode.execute(app)
    
    expect(app.mode).to eq(:prompt)
  end
end
