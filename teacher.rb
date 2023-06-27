require "./person.rb"
class Teacher < Person
    attr_accessor :specialization
  
    def initialize(name = 'Unknown', age = nil, parent_permission = true, specialization = nil)
      super(name, age, parent_permission)
      @specialization = specialization
    end
  
    def can_use_services?
      true
    end
  end
  