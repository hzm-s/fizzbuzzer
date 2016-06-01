require 'spec_helper'
require 'stringio'

describe FizzBuzzer::History do
  describe '#save_to_store' do
    it do
      store = StoreSpy.new
      history = described_class.new

      history.record(2, 2)
      history.record(3, 'fizz')
      history.record(15, 'fizzbuzz')
      history.save_to_store(store)

      expect(store.load).to eq(
        <<-EOH
2 => 2
3 => fizz
15 => fizzbuzz
        EOH
          .chomp
      )
    end
  end
end
