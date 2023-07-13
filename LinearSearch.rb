puts "Linear Search"
puts "-------------"

def findIndexAndNumber(number, array)
  i = 0 # Inicializador do array
  size = array.length
  while i < size do
    if array[i] == number then
      puts "Number #{number} founded at #{i} of array"
      break
    elsif i >= size
    puts "Number not founded in array"
    end
    i = i + 1
  end
end

findIndexAndNumber(56, [22,32,12,44,56])
