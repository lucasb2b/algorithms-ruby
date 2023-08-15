# binary_search_spec.rb
require_relative 'binary_search'

RSpec.describe BinarySearch do
  # Criando um exemplo de teste
  it "returns correct search result" do
    # Dados de entrada para o teste
    array = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
    key = 16

    # Criando uma instância da classe BinarySearch
    binary_search = BinarySearch.new(array)

    # Chamando o método de teste e obtendo o resultado
    search_result = binary_search.search(key)

    # Verificando se o resultado do teste está correto
    expect(search_result).to eq({ found: true, element: key, position: 4 })
  end
end