class TestPerson < Test::Unit::TestCase
  def setup
    @person = Person.new(30, 'Osman', 1)
  end

  def test_correct_name
    assert_equal('Osman', @person.correct_name)
  end

  def test_add_rental
    book = Book.new('Elilly Cave', 'Osman Wako')
    rental = @person.add_rental(book, '2023-07-07')
    assert_instance_of(Rental, rental)
  end

  def test_can_use_services?
    assert_true(@person.can_use_services?)
  end
end
