require_relative '../dr.rb'
require 'pry-byebug'

describe DigitalRoot do

  it 'can find the digital root of 16' do
    expect(DigitalRoot.calculate2(16)).to eq(7)
  end

  it 'can find the digital root of 123' do
    expect(DigitalRoot.calculate2(123)).to eq(6)
  end

  it 'can find the digital root of 999' do
    expect(DigitalRoot.calculate2(999)).to eq(9)
  end

  it 'can find the digital root of 1' do
    expect(DigitalRoot.calculate2(1)).to eq(1)
  end

  it 'can find the digital root of 42342' do
    expect(DigitalRoot.calculate2(42342)).to eq(6)
  end

  it 'can find the digital root of 42383442' do
    expect(DigitalRoot.calculate2(42383442)).to eq(3)
  end

end
