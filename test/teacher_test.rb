class TestTeacher < Test::Unit::TestCase
  def setup
    @teacher = Teacher.new("Ruby", 30, "Massa", permission: true)
  end

  def test_specialization
    assert_equal("Ruby", @teacher.specialization)
  end

  def test_can_use_services?
    assert_true(@teacher.can_use_services?)
  end
end
