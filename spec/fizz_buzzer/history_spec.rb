require 'spec_helper'
require 'stringio'

xdescribe FizzBuzzer::History do
  describe '#save' do
    it do
      dummy_file = StringIO.new
      history = described_class.new(dummy_file)
      history.record(2, 2)
      history.record(3, 'fizz')
      history.record(15, 'fizzbuzz')
      history.save
      expect(dummy_file).to eq('hey')
    end
  end
end
