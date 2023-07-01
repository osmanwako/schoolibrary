require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'app'

APP = App.new

def getpermission(val)
  return 1 if val == 'y'

  0
end

def createstudent
  print "\Age:"
  age = gets.chomp.to_i
  print "\Name:"
  name = gets.chomp.capitalize
  print "\Has parent Permission? [Y/N]:\t"
  val = gets.chomp.downcase
  parent_permission = getpermission(val)
  student = Student.new(1, age, name, parent_permission)
  APP.addperson(student)
end

def createacher
  print "\Age: "
  age = gets.chomp.to_i
  print "\Name: "
  name = gets.chomp.capitalize
  print "\Specialization: "
  specialization = gets.chomp.capitalize
  teacher = Teacher.new(specialization, age, name)
  APP.addperson(teacher)
end

def listbooks
  books = APP.getbooks
  books.each do |book|
    puts("Title : #{book.title}, Author:#{book.author}")
  end
end

def listpeople
  persons = APP.getpersons
  persons.each do |person|
    puts("[#{person.class}] Name : #{person.name}, ID:#{person.id}, Age: #{person.age}")
  end
end

def createperson
  valid = true
  loop do
    print "\n Do you want to create student (1) or teacher (2)? [input the number]:\t"
    order = gets.chomp
    valid = true
    if order == '1'
      createstudent
    elsif order == '2'
      createacher
    else
      puts "\nInvalid input. Please try again!"
      valid = false
    end
    break if valid
  end
  puts "\Person created successfully!"
end

def createbook
  print "\Title: "
  title = gets.chomp.capitalize
  print "\Author: "
  author = gets.chomp.capitalize
  book = Book.new(title, author)
  APP.addbook(book)
  puts "\Book created successfully!"
end

def selectbook
  books = APP.getbooks
  return nil unless books

  puts('Select a book from the following list numbers')
  books.each_with_index do |book, i|
    puts("#{i}) Title : #{book.title}, Author:#{book.author}")
  end
  i = gets.chomp.to_i
  books[i]
end

def selectperson
  persons = APP.getpersons
  return nil unless persons

  puts('Select a book from the following list numbers')
  persons.each_with_index do |person, i|
    puts("#{i}) Name : #{person.name}, ID:#{person.id}, Age: #{person.age}")
  end
  i = gets.chomp.to_i
  persons[i]
end

def createrental
  book = selectbook
  person = selectperson
  return unless person && book

  print "\n Date: "
  date = gets.chomp
  rental = Rental.new(date, book, person)
  APP.addrental(rental)
  puts 'Rental created successfully!'
end

def listrental
  rentals = APP.getrentals
  return unless rentals

  puts('Enter Id of Person')
  id = gets.chomp.to_i
  searches = rentals.select { |rental| rental.person.id == id }
  puts("\nRentals:")
  searches.each do |rental|
    print("\nDate : #{rental.date}, Book : #{rental.book.title}, by #{rental.book.author}")
  end
end

def mainselect(num)
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

def main(message)
  puts message
  loop do
    puts "\nPlease choose an options by entering a number"
    puts "\n1 - List all books"
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    order = gets.chomp
    break if order == '7'

    mainselect(order)
  end
end

main("WelCome to School Library App!\n")
