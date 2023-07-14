array = [2,5,8,12,16,23,38,56,72,91] # Array de números
key = 56 # Elemento a ser encontrado

def leftSide(array)
  
end

def rightSide(array)

end

# Primeiro Passo Descobrir o meio do Array
midElement = (array.length / 2) - 1
if array[midElement] == key then
  puts "Achou"
elsif key < array[midElement] then
  puts "#{array[midElement]} e #{key}"
  puts "Lado Esquerdo"
else
  puts "#{array[midElement]} e #{key}"
  puts "Lado Direito"
end 