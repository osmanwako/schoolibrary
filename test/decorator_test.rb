class TestDecorator < Test::Unit::TestCase
  def setup
    @person = Person.new(30, 'osman@wakowwwwwwww', 1)
    @decorator = Decorator.new(@person)
    @capitalize_decorator = CapitalizeDecorator.new(@person)
    @trimmer_decorator = TrimmerDecorator.new(@person)
  end

  def test_correct_name
    assert_equal('osman@wakowwwwwwww', @decorator.correct_name)
    assert_equal('Osman@wakowwwwwwww', @capitalize_decorator.correct_name)
    assert_equal('osman@wako', @trimmer_decorator.correct_name)
  end

  def test_capitalize_decorator
    assert_equal('osman@wakowwwwwwww', @capitalize_decorator.nameable.name)
    assert_equal('Osman@wakowwwwwwww', @capitalize_decorator.correct_name)
  end

  def test_trimmer_decorator
    assert_equal('osman@wakowwwwwwww', @trimmer_decorator.nameable.name)
    assert_equal('osman@wako', @trimmer_decorator.correct_name)
  end
end
