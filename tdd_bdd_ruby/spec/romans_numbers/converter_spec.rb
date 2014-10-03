require_relative '../../lib/romans_numbers/converter.rb'

require 'spec_helper'

describe Converter do
  it 'convert symbol I to 1' do
    converter = Converter.new
    number = converter.convert 'I'
    expect(number).to eq(1)
  end

  it 'convert symbol II to 2' do
    converter = Converter.new
    number = converter.convert 'II'
    expect(number).to eq(2)
  end

  it 'convert symbol XX to 20' do
    converter = Converter.new
    number = converter.convert 'XX'
    expect(number).to eq(20)
  end

  it 'convert symbol XXIV to 24' do
    converter = Converter.new
    number = converter.convert 'XXIV'
    expect(number).to eq(24)
  end

  it 'convert symbol XXII to 22' do
    converter = Converter.new
    number = converter.convert 'XXII'
    expect(number).to eq(22)
  end

  it 'convert symbol V to 5' do
    converter = Converter.new
    number = converter.convert 'V'
    expect(number).to eq(5)
  end

  it 'convert symbol IV to 4' do
    converter = Converter.new
    number = converter.convert 'IV'
    expect(number).to eq(4)
  end
end