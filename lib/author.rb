class Author
  attr_reader :books,
              :first_name,
              :last_name


  def initialize(attributes)
    @books = []
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]

  end

   def add_book(book_title, book_year)
     book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: book_title, publication_date: book_year})
     @books << book
   end
   
end
