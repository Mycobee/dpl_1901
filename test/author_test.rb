require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
  end

  def test_it_exists
    assert_instance_of Author, @nk_jemisin

  end

  def test_author_starts_with_empty_array_of_books
    assert_equal [],  @nk_jemisin.books
  end

  def test_author_attributes
    assert_equal "N.K.", @nk_jemisin.first_name
    assert_equal "Jemisin", @nk_jemisin.last_name

  end

  def test_add_books_method_and_attributes
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    assert_equal "The Fifth Season", @nk_jemisin.books[0].title
    assert_equal "2015", @nk_jemisin.books[0].publication_date
    assert_equal "N.K.", @nk_jemisin.books[0].author_first_name
    assert_equal "Jemisin", @nk_jemisin.books[0].author_last_name

    @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    assert_equal "The Hundred Thousand Kingdoms", @nk_jemisin.books[1].title
    assert_equal "2010", @nk_jemisin.books[1].publication_date
    assert_equal "N.K.", @nk_jemisin.books[1].author_first_name
    assert_equal "Jemisin", @nk_jemisin.books[1].author_last_name
  end

end
