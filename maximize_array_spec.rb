# maximize_array_spec.rb

require_relative 'maximize_array'  # Certifique-se de que o nome do arquivo coincide

RSpec.describe '#maximize_array' do
  it 'returns the maximum sum after changing elements' do
    array = [-2, 0, 5, -1, 2]
    k = 4
    expect(maximize_array(array, k)).to eq(10)
  end

  it 'returns the maximum sum with limited changes' do
    array = [3, -1, 0, 2]
    k = 2
    expect(maximize_array(array, k)).to eq(6)
  end

  it 'returns the maximum sum with no changes' do
    array = [1, 2, 3]
    k = 0
    expect(maximize_array(array, k)).to eq(6)
  end
end
