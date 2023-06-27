require "./person.rb"
class Student < Person
    attr_accessor :classroom
  
    def initialize(name = 'Unknown', age = nil, parent_permission = true, classroom = nil)
      super(name, age, parent_permission)
      @classroom = classroom
    end
  
    def play_hooky
      '¯\\(ツ)/¯'
    end
  end
  