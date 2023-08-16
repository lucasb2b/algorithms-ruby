require_relative 'BubbleSort'

RSpec.describe BubbleSorter do
  describe "#sort" do
    it "ordena corretamente a lista" do
      lista = [18, 7, 55, 23, 1, 12, 57, 85, 42]
      bubble_sorter = BubbleSorter.new(lista)
      bubble_sorter.sort
      expect(bubble_sorter.instance_variable_get(:@lista)).to eq([1, 7, 12, 18, 23, 42, 55, 57, 85])
    end
  end
end