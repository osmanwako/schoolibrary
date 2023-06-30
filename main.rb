require_relative 'student'
def permission(val)
  case val
  when 'y' then true
  else false
  end
end

def addstudent
  print "\Age:"
  age = gets.chomp
  print "\Age:"
  name = gets.chomp
  print "\Has parent Permission? [Y/N]:\t"
  val = gets.chomp
  permission = permission(val)
  student=Student.new();
end

def addteacher
  puts 'Select 1 the number'
end

def listbooks
  puts 'Select 1 the number'
end

def listpeople
  puts 'Select 1 the number'
end

def createperson
  print "\n Do you want to create student (1) or teacher (2)? [input the number]:\t"
  order = gets.chomp
  if order === '1'
    addstudent
  elsif order === '2'
    addteacher
  end
end

def createbook
  puts 'Select 1 the number'
end

def createbook
  puts 'Select 1 the number'
end

def createrental
  puts 'Select 1 the number'
end

def listrental
  puts 'Select 1 the number'
end

def getselect(num)
  case num
  when '1' then listbooks
  when '2' then listpeople
  when '3' then createperson
  when '4' then createbook
  when '5' then createrental
  when '6' then listrental
  else puts "\n"
  end
end
