class Library
  attr_reader :name, :books, :authors

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
    @books_checked_out << book
    book.checkouts += 1
  end
end
