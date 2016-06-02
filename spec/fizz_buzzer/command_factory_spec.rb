require 'spec_helper'

module FizzBuzzer
  describe CommandFactory do
    let(:factory) { described_class.new(history, store) }
    let(:history) { double(:history) }
    let(:store) { double(:store) }

    it 'should return nil' do
      command = factory.create('0')
      expect(command).to be_nil
    end

    it 'should return Record' do
      command = factory.create('1')
      expect(command).to be_instance_of(Commands::Record)
    end

    it 'should return ShowHistory' do
      command = factory.create('2')
      expect(command).to be_instance_of(Commands::ShowHistory)
    end

    it 'should return SaveHistory' do
      command = factory.create('3')
      expect(command).to be_instance_of(Commands::SaveHistory)
    end

    it 'should return LoadHistory' do
      command = factory.create('4')
      expect(command).to be_instance_of(Commands::LoadHistory)
    end

    it 'should return ShowUsage' do
      command = factory.create('5')
      expect(command).to be_instance_of(Commands::ShowUsage)
    end

    it 'should return ShowUsage' do
      command = factory.create('a')
      expect(command).to be_instance_of(Commands::ShowUsage)
    end

    it 'should return ShowUsage' do
      command = factory.create('')
      expect(command).to be_instance_of(Commands::ShowUsage)
    end
  end
end
