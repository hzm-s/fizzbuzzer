require 'spec_helper'

module Modes
  describe Prompt do
    it '0が入力されたら終了する' do
      io = IOSpy.new(0)
      modes = ModeSpy.new

      mode = described_class.new
      mode.execute(modes, io)

      expect(modes.current).to be_nil
    end

    it '1が入力されたらFizzBuzzを開始する' do
      io = IOSpy.new(1)
      modes = ModeSpy.new

      mode = described_class.new
      mode.execute(modes, io)

      expect(io.buffer).to eq("整数を入力してください\n")
      expect(modes.current).to eq(:fizz_buzz)
    end
  end
end
