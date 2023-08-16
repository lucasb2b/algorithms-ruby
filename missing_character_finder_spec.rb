# missing_character_finder_spec.rb

require 'rspec'
require_relative 'MissingChacter'  # Certifique-se de que o arquivo da classe esteja no mesmo diretório

RSpec.describe MissingCharacterFinder do
  describe '#find_missing_letters' do
    context 'when given the phrase "Hello, world!"' do
      it 'returns an array containing missing letters' do
        phrase = "Hello, world!"
        missing_character_finder = MissingCharacterFinder.new(phrase)

        result = missing_character_finder.find_missing_letters

        expect(result).to eq(["a", "b", "c", "f", "g", "i", "j", "k", "m", "n", "p", "q", "s", "t", "u", "v", "x", "y", "z"])
      end
    end
  end
end
