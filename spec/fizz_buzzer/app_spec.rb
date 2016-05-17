require 'spec_helper'

describe FizzBuzzer::App do
  let(:app) { described_class.new }
  let(:shell) { double(:shell) }

  it do
    res = app.call(nil)
    expect(shell).to receive(:print).with('メニューを選択してください> ')
    res.apply(shell)
  end

  it do
    res = app.call("\n")
    expect(shell).to receive(:print).with('メニューを選択してください> ')
    res.apply(shell)
  end

  it do
    res = app.call("0\n")
    expect(shell).to receive(:exit)
    res.apply(shell)
  end
end
