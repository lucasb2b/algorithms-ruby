class BinarySearch
  def initialize(array)
    @array = array
  end

  def search(key)
    index = binary_search_recursive(key, 0, @array.length - 1)
    if index == -1
      result = { found: false, element: nil, position: -1}
    else
      result = { found: true, element: key, position: index}
    end
    result
  end

  def print_search_result(key)
    search_result = search(key)

    if search_result[:found]
      puts "Elemento #{search_result[:element]} encontrado no índice #{search_result[:position]}"
    else
      puts "Elemento não encontrado"
    end
  end

  private

  def binary_search_recursive(key, start_index, end_index)
    return -1 if start_index > end_index

    half_index = (start_index + end_index) / 2

    if @array[half_index] == key
      half_index
    elsif key < @array[half_index]
      binary_search_recursive(key, start_index, half_index - 1)
    else
      binary_search_recursive(key, half_index + 1, end_index)
    end
  end
end

array = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
key = 16

binary_search = BinarySearch.new(array).print_search_result(key)