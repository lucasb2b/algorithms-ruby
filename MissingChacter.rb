def missing_character(phrase = 0)
  #alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  alphabet = ('a'..'z').to_a
  # Colocar a string em minúsculo
  downcase_string = phrase.downcase
  # Remover espaços em branco, pontos, vírgulas
  phrase_sanitize = downcase_string.gsub(/[\s,\.]/, '')
  # Separar letra a letra colocando em um array
  array_letter = phrase_sanitize.chars

  i = 0
  m = 0

  while i < array_letter.length
    j = 0
    while j < alphabet.length
      if array_letter[i] == alphabet[j]
        m = m + 1
      end
      j = j + 1
    end
    i += 1
  end

  return alphabet.length - m
end

ok = missing_character("The quick brown fox jumps over the lazy dog.")
puts ok