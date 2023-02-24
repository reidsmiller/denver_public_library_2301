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
      james_corey = Author.new({first_name: "James", last_name: "Corey"})
      leviathan_wakes = james_corey.write("Leviathan Wakes", "June 15, 2011")
      nemesis_games = james_corey.write("Nemesis Games", "June 2, 2015")
      leviathan_falls = james_corey.write("Leviathan Falls", "November 30, 2021")


      library.add_author(charlotte_bronte)
      library.add_author(james_corey)

      expect(library.authors).to eq([charlotte_bronte, james_corey])
      expect(library.books).to eq([jane_eyre, villette, leviathan_wakes, nemesis_games, leviathan_falls])
    end

    it 'can tell us publication time frame for author' do
      library = Library.new("Denver Public Library")
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      james_corey = Author.new({first_name: "James", last_name: "Corey"})
      leviathan_wakes = james_corey.write("Leviathan Wakes", "June 15, 2011")
      nemesis_games = james_corey.write("Nemesis Games", "June 2, 2015")
      leviathan_falls = james_corey.write("Leviathan Falls", "November 30, 2021")

      expect(library.publication_time_frame_for(charlotte_bronte)).to eq({:start=>"1847", :end=>"1853"})
      expect(library.publication_time_frame_for(james_corey)).to eq({:start=>"2011", :end=>"2021"})
    end
  end
end