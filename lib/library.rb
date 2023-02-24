class Library
  attr_reader :name, :books, :authors, :books_checked_out

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @books_checked_out = []
  end

  def add_author(author)
    @authors << author
    author.books.each {|book| @books << book}
  end

  def publication_time_frame_for(author)
    publication_years = []
    author.books.each {|book| publication_years << book.publication_year}
    publication_years_i = []
    publication_years.each {|year| publication_years_i << year.to_i}
    publication_years_i.sort!
    time_frame = {
      start: publication_years_i.first.to_s,
      end: publication_years_i.last.to_s
    }
  end

  def checkout(book)
    if book.checked_out == false
      @books_checked_out << book
      book.checked_out = true
      book.checkouts += 1
      return true
    else
      false
    end
  end

  def return(return_book)
    @books_checked_out.delete(return_book)
    book.checked_out = false
  end

  def most_checked_out
    @books.max_by {|book| book.checkouts}
  end
end
