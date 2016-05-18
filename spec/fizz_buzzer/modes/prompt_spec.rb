require 'spec_helper'

describe FizzBuzzer::Modes::Prompt do
  it '0が入力されたら終了する' do
    mode = described_class.new
    app = AppSpy.new(0)

    mode.execute(app)
    
    expect(app.terminated).to be_truthy
  end

  it '1が入力されたらFizzBuzzを開始する' do
    mode = described_class.new
    app = AppSpy.new(1)

    mode.execute(app)
    
    expect(app.mode).to be_instance_of(FizzBuzzer::Modes::FizzBuzz)
  end
end
