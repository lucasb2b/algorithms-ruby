# linear_search_spec.rb

require_relative 'LinearSearch'  # Certifique-se de que o nome do arquivo coincide

RSpec.describe '#findIndexAndNumber' do
  it 'finds the index and number in the array' do
    array = [22, 32, 12, 44, 56]
    number = 56
    expect { findIndexAndNumber(number, array) }.to output("Number #{number} founded at 4 of array\n").to_stdout
  end

  it 'handles number not found' do
    array = [22, 32, 12, 44, 56]
    number = 99
    expect { findIndexAndNumber(number, array) }.to output("Number not found!\n").to_stdout
  end
end
