class BubbleSorter
  def initialize(lista)
    @lista = lista
  end

  def sort
    n = @lista.length
    troca = true

    while troca
      troca = false
      for i in 0..n-2
        if @lista[i] > @lista[i + 1]
          @lista[i], @lista[i + 1] = @lista[i + 1], @lista[i]
          troca = true
        end
      end
      n -= 1
    end
  end
  
  def imprimir_lista
    puts @lista
  end
end

# Teste simples
puts "Bubble Sort"
puts "----------------------------------------"
lista = [18, 7, 55, 23, 1, 12, 57, 85, 42]

bubble_sorter = BubbleSorter.new(lista)
bubble_sorter.sort
bubble_sorter.imprimir_lista