class TestRental < Test::Unit::TestCase
  def setup
    @book = Book.new("The Alchemist", "Paulo Coelho")
    @person = Person.new(30, "John", 1)
    @rental = Rental.new("2023-07-07", @book, @person)
  end

  def test_date
    assert_equal("2023-07-07", @rental.date)
  end

  def test_book
    assert_equal(@book, @rental.book)
  end

  def test_person
    assert_equal(@person, @rental.person)
  end
end
