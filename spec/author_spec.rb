require 'spec_helper'

RSpec.describe Author do
  describe "#Iteration 2" do
    it 'can instantiate Author' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(charlotte_bronte.first_name).to eq("Charlotte")
      expect(charlotte_bronte.last_name).to eq("Bronte")
      expect(charlotte_bronte.books).to eq([])
    end

    it 'can create book under author name' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre.class).to eq(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")
    end

    it 'can store multiple books in array' do
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")

      expect(charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end
end