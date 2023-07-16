def counting_sort(array)
  max_val = array[0]
  min_val = array[0]

  # Encontrar o valor máximo e mínimo
  for i in 1..array.length-1
    if array[i] > max_val
      max_val = array[i]
    elsif array[i] < min_val
      min_val = array[i]
    end
  end

  # Criar o array de contagem
  range = max_val - min_val + 1
  count_arr = Array.new(range,0)

  # Contar as ocorrências dos elementos
  for i in 0..array.length-1
    count_arr[array[i] - min_val] += 1
  end

  # Calcular as posições finais no array ordenado
  for i in 1..range-1
    count_arr[i] += count_arr[i - 1]
  end

  # Construir a lista ordenada
  sorted_arr = Array.new(array.length)
  for i in array.length-1..0
    sorted_arr[count_arr[array[i] - min_val] - 1] = array[i]
    count_arr[array[i] - min_val] -= 1
  end

  return sorted_arr
end

array = [4, 2, 2, 8, 3, 3, 1]
sorted_arr = counting_sort(array)
puts sorted_arr.join(', ')