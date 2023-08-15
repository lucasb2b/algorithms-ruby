require_relative 'CountingSort' # Inclui a implementação do CountingSort

RSpec.describe CountingSort do
  describe ".sort" do
    it "sorts the array in ascending order" do
      array = [8, 8, 2, 3, 2, 4, 6, 8, 6, 7, 2, 3, 5, 7, 9]
      sorted_array = CountingSort.sort(array)
      expect(sorted_array).to eq([2, 2, 2, 3, 3, 4, 5, 6, 6, 7, 7, 8, 8, 8, 9])
    end
  end
end
