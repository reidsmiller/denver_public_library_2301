require 'spec_helper'

RSpec.describe Author do
  describe "#Iteration 2" do
    it 'can instantiate Author' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte.first_name).to eq("Charlotte")
      expect(charlotte_bronte.last_name).to eq("Bronte")
      expect(charlotte_bronte.books).to eq([])
    end
  end
end