require './test/test_helper'
require './lib/book'
require './lib/library'
require './lib/author'


class LibraryTest < Minitest::Test

  def setup
    require 'pry'; binding.pry
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @fifth_season = @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    @kingdoms = @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    @harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = @harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")
    @dpl = Library.new
  end

  def test_it_exists
    assert_instance_of Library, @dpl
  end

  def test_it_starts_with_empty_array_of_books
    assert_equal [], @dpl.books
  end

  def test_add_to_collection_method

    @dpl.add_to_collection(@fifth_season)
    assert_equal "The Fifth Season", @dps.books[0].title
  end

end
