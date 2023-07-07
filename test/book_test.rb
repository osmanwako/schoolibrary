class TestBook < Test::Unit::TestCase
  def setup
    @book = Book.new("Ellily Cave", "Osman Wako")
    @person = Person.new(30, "Osman", 1)
  end

  def test_title
    assert_equal("Ellily Cave", @book.title)
  end

  def test_author
    assert_equal("Osman Wako", @book.author)
  end

  def test_rentals
    assert_equal([], @book.rentals)
  end

  def test_add_rental
    @book.add_rental(@person, "2022-07-06")
    assert_instance_of(Rental, @book.rentals[0])
  end
end
