array = [2,5,8,12,16,23,38,56,72,91] # Array de números
key = 8 # Elemento a ser encontrado

# Primeiro passo
# Retornar a metade de um array

def splitArray(array, key)
  # Receber um array, Dividi-lo e retornar a parte conveniente
  sizeArray = array.length # Pegar o comprimento total
  halfIndex = (sizeArray / 2) - 1 # Temos aqui o índice do elemento do meio
  if array[halfIndex] == key then
    puts "Achou no meio do array"
    puts "Achou o elemento #{array[halfIndex]}"
  elsif key < array[halfIndex] then
    i = 0
    newArray = []
    while i <= halfIndex do
      newArray << array[i]
      i += 1
    end
    puts "Lado Esquerdo"
    puts newArray
    splitArray(newArray,key)
  else
    i = array.length
    newArray = []
    while i >= halfIndex do
      newArray << array[i]
      i = i - 1
    end
    puts "Lado Direito"
    reverseArray = newArray.reverse
    puts reverseArray
    splitArray(reverseArray,key)
  end
end

def binarySearch(array, key) 
  splitArray(array,key)
end

binarySearch(array,key)