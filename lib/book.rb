class Book
  attr_reader :author_first_name, :author_last_name, :title, :publication_date
  attr_accessor :checkouts

  def initialize(book_info)
    @author_first_name = book_info[:author_first_name]
    @author_last_name = book_info[:author_last_name]
    @title = book_info[:title]
    @publication_date = book_info[:publication_date]
    @checkouts = 0
  end

  def author
    author = author_first_name + (' ') + author_last_name
  end

  def publication_year
    arr = @publication_date.split(' ')
    arr[2]
  end
end
