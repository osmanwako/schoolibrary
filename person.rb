class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # accessor methods
  def can_use_services?
    of_age? || @parent_permission
  end

  def of_age?
    @age >= 18
  end

  # make it private
  private :of_age?
end
