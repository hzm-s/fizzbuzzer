require 'spec_helper'
require 'fizz_buzz_number'

describe FizzBuzzNumber do
  subject do
    fbn = described_class.new(number)
    fbn.fizzbuzz
  end

  context 'given 0' do
    let(:number) { 0 }
    it { is_expected.to eq(0) }
  end

  context 'given 1' do
    let(:number) { 1 }
    it { is_expected.to eq(1) }
  end

  context 'given 2' do
    let(:number) { 2 }
    it { is_expected.to eq(2) }
  end

  context 'given 3' do
    let(:number) { 3 }
    it { is_expected.to eq('fizz') }
  end

  context 'given 4' do
    let(:number) { 4 }
    it { is_expected.to eq(4) }
  end

  context 'given 5' do
    let(:number) { 5 }
    it { is_expected.to eq('buzz') }
  end

  context 'given 6' do
    let(:number) { 6 }
    it { is_expected.to eq('fizz') }
  end

  context 'given 10' do
    let(:number) { 10 }
    it { is_expected.to eq('buzz') }
  end

  context 'given 15' do
    let(:number) { 15 }
    it { is_expected.to eq('fizzbuzz') }
  end

  context 'given 30' do
    let(:number) { 30 }
    it { is_expected.to eq('fizzbuzz') }
  end
end
