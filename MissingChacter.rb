def missing_character(phrase = 0)
  alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  # Colocar a string em minúsculo
  downcase_string = phrase.downcase
  # Remover espaços em branco, pontos, vírgulas
  phrase_sanitize = downcase_string.gsub(/[\s,\.]/, '')
  # Separar letra a letra colocando em um array
  array_letter = phrase_sanitize.chars

  return array_letter.inspect

end
