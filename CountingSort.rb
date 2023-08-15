class CountingSort
  def self.sort(array)
    # Encontra o valor máximo e mínimo no array
    max_val = array.max
    min_val = array.min

    # Calcula o tamanho necessário para o array de contagem
    range = max_val - min_val + 1
    count_arr = Array.new(range, 0)

    # Conta as ocorrências de cada elemento no array original
    array.each { |num| count_arr[num - min_val] += 1 }

    # Atualiza o array de contagem para ter as posições finais
    (1...range).each { |i| count_arr[i] += count_arr[i - 1] }

    # Constrói o array ordenado usando o array de contagem
    sorted_arr = Array.new(array.length)
    array.reverse_each do |num|
      sorted_arr[count_arr[num - min_val] - 1] = num
      count_arr[num - min_val] -= 1
    end

    sorted_arr
  end
end

# Teste simples
array = [8, 3, 5, 1, 4, 2]
sorted_arr = CountingSort.sort(array)
puts "Array original: #{array}"
puts "Array ordenado: #{sorted_arr.join(', ')}"