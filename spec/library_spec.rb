require 'spec_helper'

RSpec.describe Library do
  describe '#Iteration 3' do
    it 'can instantiate a Library' do
      library = Library.new("Denver Public Library")

      expect(library.name).to eq("Denver Public Library")
      expect(library.books).to eq([])
      expect(library.authors).to eq({})
    end
  end
end