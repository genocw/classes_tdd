class Library

  attr_reader :books

  def initialize(books_array)
    @books = books_array
  end

  def get_book_info(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end

    return nil
  end

  def get_rental_info(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end

    return nil
  end

  def add_new_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        due_date: ""}
    }
    @books.push(new_book)
  end

  def change_rental_info(title, new_student_name, new_due_date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = new_student_name
        book[:rental_details][:due_date] = new_due_date
      end
    end

    return nil
  end

end
