require 'set'

class MissingCharacterFinder
  def initialize(phrase)
    @alphabet = ('a'..'z').to_a
    @phrase_sanitize = phrase.downcase.gsub(/[\s,\.]/, '')
    @array_letter = @phrase_sanitize.chars
  end

  def find_missing_letters
    alphabet_set = Set.new(@alphabet)

    @array_letter.each do |letter|
      alphabet_set.delete(letter)
    end

    alphabet_set.to_a
  end

  def display_missing_letters
    letters_missing = find_missing_letters
    puts "Letras ausentes na frase:"
    puts letters_missing.join(', ')
    letters_missing.size
  end
end

phrase = "Eu sou o melhor dos mundos"
missing_character_finder = MissingCharacterFinder.new(phrase)
missing_letters_count = missing_character_finder.display_missing_letters
puts "Quantidade de letras ausentes: #{missing_letters_count}"