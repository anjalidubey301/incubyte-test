# spec/models/string_calculator_spec.rb
require 'rails_helper'

RSpec.describe Calculator, type: :model do
  describe '#add' do
    let(:calculator) { Calculator.new }

    it 'returns 0 for an empty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number for a single number' do
      expect(calculator.add('1')).to eq(1)
    end
    it 'returns the sum for two numbers' do
        expect(calculator.add('1,2')).to eq(3)
    end
    it 'returns the sum for multiple numbers' do
        expect(calculator.add('1,2,3')).to eq(6)
    end
    it 'handles new lines between numbers' do
        expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
