class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission = 1)
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # getter methods
  def getid
    @id
  end

  def getname
    @name
  end

  def getage
    @age
  end

  # setter methods
  def setname=(value)
    @name = value
  end

  def setage=(value)
    @age = value
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
