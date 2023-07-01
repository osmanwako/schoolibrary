require_relative 'nameable'
require_relative 'decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, parent_permission, name = 'Unknown')
    super()
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
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
