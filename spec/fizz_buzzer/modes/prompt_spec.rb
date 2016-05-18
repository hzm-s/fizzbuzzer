require 'spec_helper'

module FizzBuzzer
  describe Modes::Prompt do
    it '0が入力されたら終了する' do
      mode = described_class.new
      app = AppSpy.new(UISpy.new(0), nil)

      mode.execute(app)
      
      expect(app.terminated).to be_truthy
    end

    it '1が入力されたらFizzBuzzを開始する' do
      mode = described_class.new
      app = AppSpy.new(UISpy.new(1), nil)

      mode.execute(app)
      
      expect(app.mode).to eq(:fizz_buzz)
    end
  end
end
