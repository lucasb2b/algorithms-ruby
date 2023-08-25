# min_sum_spec.rb

require_relative 'min_sum'

RSpec.describe '#min_sum' do
  it 'calculates the minimum sum based on the array and number of elements' do
    array = [23, 56, 12, 63, 8]
    number = array.count
    expect(min_sum(array, number)).to eq(40)
  end

  it 'returns 0 for an empty array' do
    array = []
    number = array.count
    expect(min_sum(array, number)).to eq(0)
  end

  it 'handles negative numbers in the array' do
    array = [-10, -5, -3, -7]
    number = array.count
    expect(min_sum(array, number)).to eq(21)
  end
end
