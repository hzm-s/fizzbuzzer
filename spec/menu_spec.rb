require 'spec_helper'

describe Menu do
  describe '#detect_action' do
    subject do
      ui = TestUI.new(number)
      menu =  Menu.new
      menu.detect_action(ui)
    end

    context 'given 0' do
      let(:number) { 0 }
      it { is_expected.to be_nil }
    end

    context 'given 1' do
      let(:number) { 1 }
      it { is_expected.to be_instance_of(Actions::FizzBuzz) }
    end

    context 'given 2' do
      let(:number) { 2 }
      it { is_expected.to be_instance_of(Actions::ShowHistory) }
    end
  end
end
