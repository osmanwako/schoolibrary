class TestClassroom < Test::Unit::TestCase
  def setup
    @classroom = Classroom.new("Math")
    @student = Student.new("Math", 15, "John", 1)
  end

  def test_label
    assert_equal("Math", @classroom.label)
  end

  def test_students
    assert_equal([], @classroom.students)
  end

  def test_add_student
    @classroom.add_student(@student)
    assert_equal([@student], @classroom.students)
    assert_equal(@classroom, @student.classroom)
  end
end
