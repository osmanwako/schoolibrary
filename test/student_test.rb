class TestStudent < Test::Unit::TestCase
  def setup
    @student = Student.new("Ruby", 15, "Osman", 1)
  end

  def test_classroom
    assert_equal("Ruby", @student.classroom)
  end

  def test_play_hooky
    assert_equal('¯\\_(ツ)_/¯', @student.play_hooky)
  end
end
