array = [2,5,8,12,16,23,38,56,72,91] # Array de números
key = 12 # Elemento a ser encontrado

# Primeiro passo
# Retornar a metade de um array

def splitArray(array, key)
  # Receber um array, Dividi-lo e retornar a parte conveniente
  sizeArray = array.length # Pegar o comprimento total
  halfIndex = (sizeArray / 2) - 1 # Temos aqui o índice do elemento do meio
  if array[halfIndex] == key then
    puts "Achou no meio do array"
  elsif key < array[halfIndex] then
    puts "Lado Esquerdo"
    
    leftSide(array,key)
  else
    puts "Lado Direito"
    rightSide(array,key)
  end
end

def leftSide(array,key)
end

def rightSide(array,key)
end

def calc(array, key) 
  splitArray(array,key)
end

calc(array,key)