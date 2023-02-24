require 'spec_helper'

Rspec.describe Book do
  describe '#Iteration 1' do
    it 'can instantiate new book' do
      book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

      expect(book.author_first_name).to eq("Harper")
      expect(book.author_last_name).to eq("Lee")
      expect(book.title).to eq ("To Kill a Mockingbird")
      expect(book.publication_date).to eq("July 11, 1960")
    end

    
  end
end