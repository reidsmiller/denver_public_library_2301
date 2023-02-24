require 'spec_helper'

RSpec.describe Library do
  describe '#Iteration 3' do
    it 'can instantiate a Library' do
      library = Library.new("Denver Public Library")

      expect(library.name).to eq("Denver Public Library")
      expect(library.books).to eq([])
      expect(library.authors).to eq([])
    end

    it 'can add authors and all their books' do
      library = Library.new("Denver Public Library")
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")

      library.add_author(charlotte_bronte)

      expect(library.authors).to eq([charlotte_bronte])
      expect(library.books).to eq([jane_eyre, villette])
    end
  end
end