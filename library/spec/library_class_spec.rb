require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class')

class TestLibrary < Minitest::Test

  def setup
    @books_array = [
      # each book is a hash
      {
        title: "Momo",
        rental_details: {
          student_name: "Genna Walsh",
          due_date: "1 October 2018"
        }
      }
    ]
    @new_library = Library.new(@books_array)
  end

  def test_get_book_info__found
    expected = @books_array[0]
    actual = @new_library.get_book_info("Momo")
    assert_equal(expected, actual)
  end

  def test_get_book_info__not_found
    result = @new_library.get_book_info("Carol")
    assert_nil(result)
  end

  def test_get_rental_info__book_found
    expected = @books_array[0][:rental_details]
    actual = @new_library.get_rental_info("Momo")
    assert_equal(expected, actual)
  end

  def test_get_rental_info__book_found
    result = @new_library.get_rental_info("Carol")
    assert_nil(result)
  end

  def test_add_new_book
    #use the method
    @new_library.add_new_book("Carol")
    #check length of books array
    expected = 2
    actual = @books_array.length
    assert_equal(expected, actual)
  end

  def test_change_rental_info__book_found
    #takes 3 arguments
    #do the method
    @new_library.change_rental_info("Momo", "John Smith", "1 November 2018")
    #check for changes
    expected = "John Smith"
    actual = @books_array[0][:rental_details][:student_name]
    assert_equal(expected, actual)
    expected = "1 November 2018"
    actual = @books_array[0][:rental_details][:due_date]
    assert_equal(expected, actual)
  end

  def test_change_rental_info__book_not_found
    result = @new_library.change_rental_info("Carol", "John Smith", "1 November 2018")
    assert_nil(result)
  end

end
